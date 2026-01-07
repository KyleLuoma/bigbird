-- Hero Training Facility details
CREATE TABLE hero_training_facility
(
    facility_id               INTEGER NOT NULL PRIMARY KEY,
    facility_name             TEXT,
    location_city             TEXT,
    location_state            TEXT,
    capacity                  INTEGER,
    opening_date              DATE,
    manager_name              TEXT,
    contact_email             TEXT,
    phone_number              TEXT,
    security_level            INTEGER,
    equipment_inventory       TEXT,
    training_programs_offered TEXT,
    certification_accredited  INTEGER,   -- 0 = false, 1 = true
    annual_budget             REAL,
    maintenance_schedule      TEXT,
    accessibility_features    TEXT,
    parking_spaces            INTEGER,
    health_safety_compliance  INTEGER,   -- 0 = false, 1 = true
    rating                    REAL,
    notes                     TEXT
);

INSERT INTO hero_training_facility VALUES (1,'Omega Academy','Metropolis','NY',250,'2010-05-12','John Doe','john.doe@omega.com','5551234567',3,'Combat Simulators;Stealth Labs','Physical Combat;Power Control',1,1250000.00,'Quarterly','Wheelchair Ramp;Braille Signs',120,1,4.8,'Flagship facility');
INSERT INTO hero_training_facility VALUES (2,'Helix Institute','Gotham','NJ',180,'2015-09-23','Jane Smith','jane.smith@helix.org','5559876543',2,'Energy Modulators','Energy Management;Flight Training',1,950000.00,'Biannual','Elevator;Assistive Listening',80,1,4.5,'Specializes in energy users');
INSERT INTO hero_training_facility VALUES (3,'Apex Center','Star City','CA',300,'2012-03-08','Mike Lee','mike.lee@apex.com','5553217890',4,'VR Battlefields;Tactical Simulators','Tactics;Leadership',0,1100000.00,'Monthly','None',200,0,4.2,'Focus on team tactics');

-- Hero Legal Documents archive
CREATE TABLE hero_legal_document
(
    document_id               INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    document_type             TEXT,
    document_number           TEXT,
    issue_date                DATE,
    expiration_date           DATE,
    jurisdiction              TEXT,
    issuing_authority         TEXT,
    signed_by                 TEXT,
    witness_1                 TEXT,
    witness_2                 TEXT,
    status                    TEXT,
    confidentiality_level     INTEGER,
    storage_location          TEXT,
    digital_checksum          TEXT,
    version_number            INTEGER,
    related_case_id           INTEGER,
    notes                     TEXT,
    attestation_method        TEXT,
    compliance_requirements   TEXT,
    last_review_date          DATE,
    reviewed_by               TEXT
);

INSERT INTO hero_legal_document VALUES (101,1,'Power Grant','PG-001','2018-01-10','2028-01-10','Federal','Department of Hero Affairs','Alice Hero','Bob Witness','Carol Witness','Active',2,'Vault A3','abc123def','1',500,'Case-777','Initial grant','Electronic Signature','Background Check','2022-12-01','Ellen Auditor');
INSERT INTO hero_legal_document VALUES (102,2,'Liability Waiver','LW-455','2019-06-15','2024-06-15','State','State Hero Commission','Dave Defender','Eve Witness','Frank Witness','Pending',1,'Secure Shelf B1','def456ghi','2',300,'Case-888','Awaiting signatures','Handwritten','Insurance Proof','2023-05-20','Gary Reviewer');
INSERT INTO hero_legal_document VALUES (103,3,'Trademark','TM-782','2020-11-01','2030-11-01','National','Trademark Office','Helen Heroine','Ivy Witness','Jack Witness','Active',3,'Digital Archive','ghi789jkl','3',150,'Case-999','Renewal due 2029','Digital','Trademark Search','2021-09-30','Karen Analyst');

-- Hero Medical History records
CREATE TABLE hero_medical_history
(
    record_id                 INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    visit_date                DATE,
    physician_name            TEXT,
    clinic_location           TEXT,
    diagnosis_code            TEXT,
    diagnosis_description     TEXT,
    treatment_given           TEXT,
    medication_prescribed     TEXT,
    dosage                    TEXT,
    follow_up_required        INTEGER,
    follow_up_date            DATE,
    notes                     TEXT,
    emergency_contact_name    TEXT,
    emergency_contact_phone   TEXT,
    blood_type                TEXT,
    allergies                 TEXT,
    immunizations_up_to_date  INTEGER,
    last_physical_exam_date   DATE,
    fitness_level             TEXT,
    injury_history            TEXT,
    recovery_time_estimate    TEXT
);

INSERT INTO hero_medical_history VALUES (1001,1,'2021-04-10','Dr Kent','Metropolis General','D001','Radiation Exposure','Decontamination Therapy','Radioprotectant','200mg','1','2021-04-17','Patient responded well','Lois Lane','5551112222','O+','None','1','2021-03-20','Excellent','None','2 weeks');
INSERT INTO hero_medical_history VALUES (1002,2,'2022-08-22','Dr Wayne','Gotham City Hospital','D045','Severe Concussion','Neuro Rest','Painkiller','50mg','0',NULL,'Symptoms resolved','Bruce Wayne','5553334444','A-','Penicillin','1','2022-08-01','Good','Concussion 2020','4 weeks');
INSERT INTO hero_medical_history VALUES (1003,3,'2023-01-15','Dr Queen','Star City Clinic','D078','Metabolic Imbalance','Dietary Adjustment','Vitamin Supplement','500IU','1','2023-01-22','Monitoring blood sugars','Oliver Queen','5555556666','B+','None','1','2022-12-30','Fair','Thyroid issue 2019','6 weeks');

-- Hero Financial Account ledger
CREATE TABLE hero_financial_account
(
    account_id                INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    account_number            TEXT,
    bank_name                 TEXT,
    branch_code               TEXT,
    account_type              TEXT,
    currency                  TEXT,
    opening_balance           REAL,
    current_balance           REAL,
    annual_interest_rate      REAL,
    overdraft_limit           REAL,
    last_statement_date      DATE,
    next_payment_due_date     DATE,
    payment_method            TEXT,
    tax_id_number             TEXT,
    compliance_status         TEXT,
    frozen_flag               INTEGER,
    created_at                DATE,
    updated_at                DATE,
    authorized_signatory      TEXT,
    purpose_description       TEXT,
    notes                     TEXT
);

INSERT INTO hero_financial_account VALUES (2001,1,'ACC1001','Global Bank','001','Checking','USD',500000.00,750000.00,0.5,10000.00,'2023-06-30','2023-07-15','Online Transfer','TX123456','Compliant',0,'2020-01-01','2023-06-30','John Doe','Operational funds','No issues');
INSERT INTO hero_financial_account VALUES (2002,2,'ACC2002','City Credit Union','042','Savings','USD',250000.00,260000.00,1.2,0.00,'2023-06-15','2023-07-01','Direct Deposit','TX654321','Compliant',0,'2019-05-10','2023-06-15','Jane Smith','Reserve funds','Interest accrued');
INSERT INTO hero_financial_account VALUES (2003,3,'ACC3003','National Trust','078','Investment','USD',1000000.00,1200000.00,2.0,50000.00,'2023-05-31','2023-07-10','Broker Transfer','TX987654','Pending Review',0,'2021-03-20','2023-05-31','Mike Lee','Long term growth','Review pending');

-- Hero Gadget Inventory
CREATE TABLE hero_gadget_inventory
(
    gadget_id                 INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    gadget_name               TEXT,
    serial_number             TEXT,
    manufacturer              TEXT,
    purchase_date             DATE,
    warranty_expiration       DATE,
    status                    TEXT,
    last_maintenance_date     DATE,
    next_maintenance_due      DATE,
    power_source              TEXT,
    battery_capacity_mAh      INTEGER,
    weight_grams              INTEGER,
    dimensions_cm              TEXT,
    assigned_mission          TEXT,
    security_clearance_level  INTEGER,
    encryption_enabled        INTEGER,
    firmware_version          TEXT,
    notes                     TEXT,
    location_storage          TEXT,
    depreciation_value        REAL,
    current_market_value      REAL,
    usage_counter             INTEGER
);

INSERT INTO hero_gadget_inventory VALUES (301,1,'Stealth Cloak','SC-1001','AeroTech','2019-02-14','2024-02-14','Operational','2023-05-01','2023-11-01','NanoFiber','0','1500','30x15x2','Shadow Ops','5','1','v2.3','Limited use','Vault B2',15000.00,30000.00,12);
INSERT INTO hero_gadget_inventory VALUES (302,2,'Power Gauntlet','PG-2022','PowerWorks','2020-07-20','2025-07-20','Operational','2023-06-10','2024-06-10','Arc Reactor','20000','2500','25x10x5','City Rescue','4','1','v1.8','Functional','Armory C1',25000.00,50000.00,30);
INSERT INTO hero_gadget_inventory VALUES (303,3,'Aerial Drone','AD-3030','SkyLab','2021-11-05','2026-11-05','Under Repair','2023-04-15','2023-10-15','Lithium','5000','800','40x40x10','Recon Mission','3','0','v3.0','Damaged propellers','Maintenance Bay D3',8000.00,15000.00,5);

-- Hero Public Profile data
CREATE TABLE hero_public_profile
(
    profile_id                INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    display_name              TEXT,
    tagline                   TEXT,
    biography                 TEXT,
    public_image_url          TEXT,
    social_media_handle       TEXT,
    website_url               TEXT,
    reputation_score          REAL,
    fan_count                 INTEGER,
    endorsement_level         INTEGER,
    active_since              DATE,
    last_public_appearance    DATE,
    primary_city              TEXT,
    primary_state             TEXT,
    primary_country           TEXT,
    language_preferences      TEXT,
    preferred_contact_method  TEXT,
    charitable_causes         TEXT,
    merchandise_line          TEXT,
    licensing_status          TEXT,
    media_coverage_count      INTEGER,
    awards_won                TEXT,
    notes                     TEXT
);

INSERT INTO hero_public_profile VALUES (401,1,'Guardian','The City\'s Shield','Vigilant protector of truth','http://images.com/guardian.png','guardianhero','http://guardianhero.com',9.5,1200000,5,'2010-01-01','2023-06-15','Metropolis','NY','USA','English;Spanish','Email','Children Education','Guardian Gear','Active',85,'Hero of the Year 2022','Highly visible');
INSERT INTO hero_public_profile VALUES (402,2,'Nightblade','From Shadows I Strike','Master of stealth and strategy','http://images.com/nightblade.png','nightblade','http://nightblade.com',8.8,950000,4,'2012-05-12','2023-05-30','Gotham','NJ','USA','English','Twitter','Urban Renewal','Nightblade Apparel','Active',70,'Best Stealth Operative 2021','Rising popularity');
INSERT INTO hero_public_profile VALUES (403,3,'SolarFlare','Light in the Dark','Harnesses solar energy to protect the innocent','http://images.com/solarflare.png','solarflare','http://solarflare.com',9.2,1100000,5,'2015-09-20','2023-07-01','Star City','CA','USA','English;French','Instagram','Environmental','SolarFlare Tech','Active',78,'Eco Hero Award 2020','Strong fan engagement');

-- Hero Fan Club Memberships
CREATE TABLE hero_fan_club_membership
(
    membership_id             INTEGER NOT NULL PRIMARY KEY,
    fan_id                    INTEGER,
    hero_id                   INTEGER,
    club_name                 TEXT,
    join_date                 DATE,
    membership_tier           TEXT,
    annual_fee_usd            REAL,
    points_earned             INTEGER,
    last_event_attended       DATE,
    favorite_merch_item       TEXT,
    preferred_contact_method  TEXT,
    newsletter_subscribed     INTEGER,
    exclusive_content_access  INTEGER,
    birthday                  DATE,
    hometown                  TEXT,
    preferred_language        TEXT,
    social_media_handle       TEXT,
    referral_source           TEXT,
    status                    TEXT,
    last_renewal_date         DATE,
    notes                     TEXT,
    loyalty_level             TEXT,
    total_spent_usd           REAL,
    last_purchase_date        DATE,
    active                    INTEGER
);

INSERT INTO hero_fan_club_membership VALUES (501,10001,1,'Guardians United','2018-03-10','Gold',120.00,4500,'2023-05-20','Guardian Shield','Email',1,1,'1990-07-15','Smallville','English','guardianfan01','Friend Referral','Active','2023-03-10','Top supporter','Platinum',3500.00,'2023-06-01',1);
INSERT INTO hero_fan_club_membership VALUES (502,10002,2,'Nightblade Alliance','2019-11-22','Silver',80.00,2100,'2023-04-12','Nightblade Dagger','Twitter',1,0,'1985-02-28','Gotham','English','nightbladefan02','Social Media','Active','2023-01-22','Enjoys stealth events','Gold',1800.00,'2023-05-15',1);
INSERT INTO hero_fan_club_membership VALUES (503,10003,3,'SolarFlare Society','2020-06-05','Bronze',50.00,950,'2023-03-30','SolarFlare T-Shirt','Instagram',1,0,'1995-12-05','Star City','French','solarflarefan03','Website','Active','2022-06-05','Likes eco-friendly merch','Silver',800.00,'2023-04-20',1);

-- Hero Licensing Agreements
CREATE TABLE hero_licensing_agreement
(
    agreement_id              INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    licensee_name             TEXT,
    product_category          TEXT,
    territory                 TEXT,
    start_date                DATE,
    end_date                  DATE,
    royalty_rate_percent      REAL,
    minimum_guarantee_usd     REAL,
    advance_payment_usd       REAL,
    reporting_frequency       TEXT,
    audit_rights              INTEGER,
    exclusivity               TEXT,
    termination_clause        TEXT,
    renewal_option            TEXT,
    governing_law             TEXT,
    dispute_resolution        TEXT,
    signature_date            DATE,
    signed_by                 TEXT,
    notes                     TEXT,
    status                    TEXT,
    last_audit_date           DATE,
    compliance_status         TEXT,
    total_royalties_paid_usd  REAL
);

INSERT INTO hero_licensing_agreement VALUES (601,1,'Global Toys','Action Figures','North America','2021-01-01','2026-01-01',5.0,200000.00,50000.00,'Quarterly',1,'Exclusive','30 days notice','Automatic','NY Law','Arbitration','2021-01-01','John Legal','Standard agreement','Active','2023-03-01','Compliant',75000.00);
INSERT INTO hero_licensing_agreement VALUES (602,2,'Shadow Apparel','Apparel','Europe','2022-05-15','2027-05-15',7.5,150000.00,30000.00','Semiannual',1,'Non-Exclusive','60 days notice','Optional','EU Law','Mediation','2022-05-15','Jane Contracts','Special terms','Active','2023-02-15','Compliant',45000.00);
INSERT INTO hero_licensing_agreement VALUES (603,3,'SolarTech','Energy Devices','Asia','2020-09-01','2025-09-01',6.0,180000.00,40000.00','Annual',0,'Exclusive','45 days notice','Automatic','CA Law','Arbitration','2020-09-01','Mike Agreements','Eco-friendly clause','Active','2022-12-01','Compliant',120000.00);

-- Hero Publicity Events
CREATE TABLE hero_publicity_event
(
    event_id                  INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    event_name                TEXT,
    event_type                TEXT,
    location_name             TEXT,
    city                      TEXT,
    state                     TEXT,
    country                   TEXT,
    start_datetime            TEXT,
    end_datetime              TEXT,
    organizer                 TEXT,
    expected_audience_size    INTEGER,
    media_partners            TEXT,
    live_stream_url           TEXT,
    tickets_available         INTEGER,
    ticket_price_usd          REAL,
    sponsorship_level         TEXT,
    press_release_url         TEXT,
    social_media_hashtag      TEXT,
    registration_deadline     DATE,
    notes                     TEXT,
    post_event_followup_date  DATE,
    outcome_summary           TEXT,
    total_revenue_usd         REAL,
    net_profit_usd            REAL
);

INSERT INTO hero_publicity_event VALUES (701,1,'Guardians Day Parade','Parade','Central Plaza','Metropolis','NY','USA','2023-07-04 09:00','2023-07-04 12:00','City Council',50000,'Metro News;Daily Planet','http://stream.com/guardians','5000',20.00,'Gold','http://press.com/guardians','#GuardiansDay','2023-06-20','Large turnout','2023-07-05','Successful community engagement',100000.00,60000.00);
INSERT INTO hero_publicity_event VALUES (702,2,'Nightblade Night Run','Charity Run','Gotham Stadium','Gotham','NJ','USA','2023-09-15 18:00','2023-09-15 21:00','Nightblade Foundation',20000,'Gotham Gazette','http://stream.com/nightblade','3000',15.00,'Silver','http://press.com/nightblade','#NightbladeRun','2023-09-01','Fundraiser for youth programs','2023-09-16','Exceeded donation targets',90000.00,50000.00);
INSERT INTO hero_publicity_event VALUES (703,3,'SolarFlare Solar Expo','Exhibition','Sun Convention Center','Star City','CA','USA','2023-11-10 10:00','2023-11-12 18:00','Solar Energy Association',35000,'Star News','http://stream.com/solarflare','4000',25.00,'Platinum','http://press.com/solarflare','#SolarFlareExpo','2023-10-25','Highlights renewable tech','2023-11-13','Positive media coverage',150000.00,95000.00);

-- Hero Nutrition Profiles
CREATE TABLE hero_nutrition_profile
(
    profile_id                INTEGER NOT NULL PRIMARY KEY,
    hero_id                   INTEGER,
    diet_type                 TEXT,
    caloric_intake_daily      INTEGER,
    protein_grams_daily       INTEGER,
    carbs_grams_daily         INTEGER,
    fats_grams_daily          INTEGER,
    supplement_list           TEXT,
    water_intake_liters_daily INTEGER,
    meal_plan_version         TEXT,
    allergies                 TEXT,
    special_considerations    TEXT,
    last_updated              DATE,
    nutritionist_name         TEXT,
    nutritionist_contact      TEXT,
    preferred_meal_time       TEXT,
    snack_frequency_per_day   INTEGER,
    vitamin_status            TEXT,
    mineral_status            TEXT,
    notes                     TEXT,
    last_blood_test_date     DATE,
    hemoglobin_level_g_dl    REAL,
    cholesterol_mg_dl         REAL,
    bmi                       REAL,
    body_fat_percent         REAL
);

INSERT INTO hero_nutrition_profile VALUES (801,1,'High Protein',3500,250,300,100,'Whey;Creatine;Multivitamin',3,'v1.2','None','High energy demands','2023-06-01','Dr Allen','5557778888','Morning','2','Optimal','Optimal','Adjusted for training cycles','2023-05-15',13.5,190.0,24.5,12.0);
INSERT INTO hero_nutrition_profile VALUES (802,2,'Low Carb',2800,180,150,120,'BCAA;Omega3;Electrolyte',2.5,'v2.0','Gluten','Stealth missions require light meals','2023-06-10','Dr Blake','5556667777','Evening','1','Sufficient','Sufficient','Tailored for night operations','2023-04-20',12.8,175.0,22.0,11.5);
INSERT INTO hero_nutrition_profile VALUES (803,3,'Balanced',3000,200,250,90,'VitaminD;Iron;Probiotics',3,'v1.5','None','Solar exposure increases vitamin D needs','2023-05-25','Dr Carter','5555554444','Afternoon','3','Optimal','Optimal','Seasonal adjustments','2023-03-30',14.0,180.0,23.0,10.8);