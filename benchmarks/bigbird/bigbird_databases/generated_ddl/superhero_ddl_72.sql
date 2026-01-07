-- Hero philanthropy program
CREATE TABLE hero_philanthropy_program
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    program_name TEXT,
    start_date DATE,
    end_date DATE,
    total_donated DECIMAL,
    cause_category TEXT,
    region TEXT,
    beneficiaries_count INTEGER,
    partnership_org TEXT,
    is_recurring BOOLEAN,
    frequency TEXT,
    description TEXT,
    media_coverage_path TEXT,
    approved_by TEXT,
    approval_date DATE,
    status TEXT,
    last_updated TIMESTAMP,
    notes TEXT,
    reporting_period TEXT,
    audit_flag BOOLEAN,
    created_at TIMESTAMP
);
INSERT INTO hero_philanthropy_program VALUES (1, 101, 'CharityRun', '2022-05-01', '2022-11-01', 50000.00, 'Health', 'NorthAmerica', 2000, 'RedCross', 1, 'Monthly', 'Annual marathon for health', '/media/run2022', 'Board', '2022-04-20', 'Completed', '2022-12-01 10:00:00', 'All good', 'FY2022', 0, '2022-12-01 10:00:00');
INSERT INTO hero_philanthropy_program VALUES (2, 102, 'SchoolSupplyDrive', '2023-01-15', NULL, 12000.50, 'Education', 'Europe', 350, 'UNESCO', 0, NULL, 'Providing supplies to schools', '/media/drive2023', 'Committee', '2023-01-10', 'Ongoing', '2023-04-01 09:30:00', 'Pending audit', 'Q1-2023', 0, '2023-04-01 09:30:00');
INSERT INTO hero_philanthropy_program VALUES (3, 103, 'FoodBankSupport', '2021-09-01', '2022-09-01', 30000.00, 'Hunger', 'Asia', 5000, 'FoodBankOrg', 1, 'Quarterly', 'Support for food banks', '/media/food2021', 'Executive', '2021-08-15', 'Closed', '2022-09-30 16:45:00', 'Successful', 'FY2021-2022', 1, '2022-09-30 16:45:00');

-- Hero nutrition profile
CREATE TABLE hero_nutrition_profile
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    diet_type TEXT,
    daily_calories INTEGER,
    protein_g INTEGER,
    carbs_g INTEGER,
    fats_g INTEGER,
    preferred_meal_time TEXT,
    supplement_used TEXT,
    water_intake_liters DECIMAL,
    breakfast_items TEXT,
    lunch_items TEXT,
    dinner_items TEXT,
    snack_items TEXT,
    allergies TEXT,
    dietary_restrictions TEXT,
    nutritionist_name TEXT,
    last_update DATE,
    notes TEXT,
    active BOOLEAN,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
INSERT INTO hero_nutrition_profile VALUES (1, 101, 'HighProtein', 3500, 250, 300, 100, 'Morning', 'Multivitamin', 4.0, 'EggsOatmeal', 'ChickenSalad', 'SteakVeggies', 'NutsYogurt', 'None', 'GlutenFree', 'DrSmith', '2023-03-01', 'Optimal', 1, '2023-03-01 08:00:00', '2023-03-01 08:00:00');
INSERT INTO hero_nutrition_profile VALUES (2, 104, 'Vegan', 2800, 150, 350, 80, 'Evening', 'B12', 3.5, 'Smoothie', 'QuinoaBowl', 'TofuStirFry', 'FruitBars', 'Peanut', 'None', 'DrLee', '2023-02-15', 'Adjust carbs', 1, '2023-02-15 09:30:00', '2023-02-15 09:30:00');
INSERT INTO hero_nutrition_profile VALUES (3, 105, 'Keto', 3200, 200, 50, 250, 'Afternoon', 'Omega3', 3.8, 'BaconEggs', 'SaladAvocado', 'GrilledFish', 'CheeseSlices', 'Shellfish', 'LowCarb', 'DrKhan', '2023-01-20', 'Monitor electrolytes', 1, '2023-01-20 07:45:00', '2023-01-20 07:45:00');

-- Hero psych evaluation
CREATE TABLE hero_psych_evaluation
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    evaluation_date DATE,
    evaluator_name TEXT,
    stress_level INTEGER,
    resilience_score INTEGER,
    anxiety_score INTEGER,
    depression_score INTEGER,
    coping_mechanisms TEXT,
    recent_trauma TEXT,
    sleep_quality INTEGER,
    mood_rating INTEGER,
    motivation_level INTEGER,
    focus_score INTEGER,
    emotional_intelligence INTEGER,
    risk_factor TEXT,
    recommended_therapy TEXT,
    followup_date DATE,
    notes TEXT,
    overall_assessment TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    is_active BOOLEAN,
    classification TEXT
);
INSERT INTO hero_psych_evaluation VALUES (1, 101, '2023-04-10', 'DrMiller', 3, 85, 12, 8, 'MeditationExercise', 'None', 7, 9, 8, 8, 90, 'Low', 'CognitiveBehavioral', '2023-05-10', 'Stable', 'Fit', '2023-04-10 10:00:00', '2023-04-10 10:00:00', 1, 'A');
INSERT INTO hero_psych_evaluation VALUES (2, 104, '2023-03-22', 'DrAdams', 6, 70, 25, 22, 'RunningTherapy', 'CombatIncident', 5, 5, 6, 5, 65, 'Medium', 'ExposureTherapy', '2023-04-22', 'Needs monitoring', 'Concern', '2023-03-22 14:30:00', '2023-03-22 14:30:00', 1, 'B');
INSERT INTO hero_psych_evaluation VALUES (3, 106, '2023-02-15', 'DrNguyen', 2, 92, 8, 5, 'YogaArt', 'None', 8, 10, 9, 9, 95, 'Low', 'None', '2023-03-15', 'Excellent', 'Optimal', '2023-02-15 09:15:00', '2023-02-15 09:15:00', 1, 'A');

-- Hero gadget inventory
CREATE TABLE hero_gadget_inventory
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    gadget_name TEXT,
    serial_number TEXT,
    acquisition_date DATE,
    manufacturer TEXT,
    model_number TEXT,
    condition_status TEXT,
    power_source TEXT,
    battery_life_hours INTEGER,
    weight_kg DECIMAL,
    dimensions_cm TEXT,
    last_maintenance DATE,
    warranty_expiry DATE,
    assigned_mission TEXT,
    is_active BOOLEAN,
    location_storage TEXT,
    usage_count INTEGER,
    notes TEXT,
    depreciation_percent DECIMAL,
    current_value DECIMAL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    maintenance_provider TEXT,
    compliance_certified BOOLEAN
);
INSERT INTO hero_gadget_inventory VALUES (1, 101, 'EnergyGloves', 'EG-1001', '2021-06-15', 'TechCorp', 'XG-9', 'Excellent', 'Battery', 48, 2.5, '15x10x5', '2023-01-10', '2025-06-15', 'RescueMissionA', 1, 'HQVault', 120, 'No scratches', 10.0, 9000.00, '2023-04-01 08:00:00', '2023-04-01 08:00:00', 'TechServ', 1);
INSERT INTO hero_gadget_inventory VALUES (2, 102, 'StealthCloak', 'SC-2002', '2020-03-20', 'InvisTech', 'ST-4', 'Good', 'Nanofiber', 72, 1.2, '30x30x1', '2022-12-05', '2024-03-20', 'InfiltrationB', 1, 'SafeHouse', 85, 'Minor wear', 15.0, 4500.00, '2023-04-01 08:10:00', '2023-04-01 08:10:00', 'InvisServ', 1);
INSERT INTO hero_gadget_inventory VALUES (3, 103, 'AerialDrone', 'AD-3033', '2022-01-10', 'AeroDynamics', 'AD-3', 'New', 'Solar', 120, 3.0, '40x40x15', '2023-03-01', '2026-01-10', 'SurveillanceC', 1, 'Hangar3', 40, 'Calibrated', 5.0, 12000.00, '2023-04-01 08:20:00', '2023-04-01 08:20:00', 'AeroServ', 1);

-- Hero transport fleet
CREATE TABLE hero_transport_fleet
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    vehicle_type TEXT,
    vehicle_name TEXT,
    registration_number TEXT,
    manufacturer TEXT,
    model TEXT,
    purchase_date DATE,
    mileage_km INTEGER,
    fuel_type TEXT,
    capacity INTEGER,
    armor_rating INTEGER,
    weapon_system TEXT,
    maintenance_interval_km INTEGER,
    last_service_date DATE,
    next_service_due DATE,
    is_operational BOOLEAN,
    assigned_base TEXT,
    gps_tracker_id TEXT,
    insurance_policy TEXT,
    depreciation_percent DECIMAL,
    current_market_value DECIMAL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    notes TEXT,
    compliance_certificate BOOLEAN
);
INSERT INTO hero_transport_fleet VALUES (1, 101, 'Vehicle', 'LightningCar', 'LC-777', 'SpeedWorks', 'LX-9', '2020-05-01', 30000, 'Electric', 4, 85, 'None', 10000, '2023-01-15', '2023-07-15', 1, 'HQGarage', 'GPS-001', 'PolicyA', 20.0, 55000.00, '2023-04-01 09:00:00', '2023-04-01 09:00:00', 'All good', 1);
INSERT INTO hero_transport_fleet VALUES (2, 102, 'Aircraft', 'SkyriderJet', 'SJ-200', 'AeroMax', 'JetX', '2019-09-10', 15000, 'JetFuel', 2, 70, 'Missiles', 2000, '2023-02-20', '2023-08-20', 1, 'AirBase1', 'GPS-010', 'PolicyB', 25.0, 820000.00, '2023-04-01 09:10:00', '2023-04-01 09:10:00', 'Inspection due soon', 1);
INSERT INTO hero_transport_fleet VALUES (3, 103, 'Boat', 'AquaRunner', 'AR-55', 'MarineTech', 'Wave9', '2021-03-05', 5000, 'Diesel', 6, 60, 'Torpedoes', 5000, '2023-03-05', '2023-09-05', 1, 'Dock12', 'GPS-099', 'PolicyC', 15.0, 120000.00, '2023-04-01 09:20:00', '2023-04-01 09:20:00', 'Ready for deployment', 1);

-- Hero legal document
CREATE TABLE hero_legal_document
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    document_type TEXT,
    document_title TEXT,
    file_path TEXT,
    issue_date DATE,
    expiration_date DATE,
    signing_authority TEXT,
    jurisdiction TEXT,
    is_confidential BOOLEAN,
    status TEXT,
    reviewed_by TEXT,
    review_date DATE,
    notes TEXT,
    version_number INTEGER,
    amendment_count INTEGER,
    related_case_id INTEGER,
    storage_location TEXT,
    access_level TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    archive_flag BOOLEAN,
    retention_period_years INTEGER,
    digital_signature_hash TEXT
);
INSERT INTO hero_legal_document VALUES (1, 101, 'Contract', 'HeroAgreement', '/docs/agree101.pdf', '2022-01-01', '2027-01-01', 'LegalDept', 'US', 1, 'Active', 'JaneDoe', '2022-01-02', 'Initial agreement', 1, 0, NULL, 'VaultA', 'TopSecret', '2023-04-01 10:00:00', '2023-04-01 10:00:00', 0, 5, 'hash123');
INSERT INTO hero_legal_document VALUES (2, 102, 'License', 'PowerUseLicense', '/docs/license102.pdf', '2021-06-15', '2026-06-15', 'RegAuthority', 'EU', 1, 'Renewed', 'JohnSmith', '2021-06-20', 'Renewed 2021', 2, 1, NULL, 'VaultB', 'Confidential', '2023-04-01 10:10:00', '2023-04-01 10:10:00', 0, 5, 'hash456');
INSERT INTO hero_legal_document VALUES (3, 103, 'NDA', 'SecretProjectNDA', '/docs/nda103.pdf', '2023-02-01', '2028-02-01', 'LegalDept', 'US', 1, 'Pending', 'EmilyClark', '2023-02-05', 'Awaiting signature', 1, 0, NULL, 'VaultC', 'HighlyConfidential', '2023-04-01 10:20:00', '2023-04-01 10:20:00', 0, 5, 'hash789');

-- Hero financial account
CREATE TABLE hero_financial_account
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    account_number TEXT,
    bank_name TEXT,
    account_type TEXT,
    currency TEXT,
    balance DECIMAL,
    credit_limit DECIMAL,
    interest_rate DECIMAL,
    opened_date DATE,
    last_statement_date DATE,
    overdraft_protection BOOLEAN,
    swift_code TEXT,
    iban TEXT,
    tax_id TEXT,
    is_active BOOLEAN,
    compliance_status TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    notes TEXT,
    investment_portfolio_value DECIMAL,
    loan_amount DECIMAL,
    loan_interest_rate DECIMAL,
    loan_term_months INTEGER,
    last_audit_date DATE,
    audit_result TEXT,
    risk_rating INTEGER,
    manager_name TEXT
);
INSERT INTO hero_financial_account VALUES (1, 101, 'ACC-001', 'GlobalBank', 'Checking', 'USD', 250000.00, 50000.00, 1.5, '2020-01-10', '2023-03-31', 1, 'GBLUS33', 'US00GBL000001', 'TID12345', 1, 'Compliant', '2023-04-01 11:00:00', '2023-04-01 11:00:00', 'Main account', 1000000.00, 150000.00, 3.5, 60, '2023-02-15', 'Pass', 2, 'AliceBrown');
INSERT INTO hero_financial_account VALUES (2, 102, 'ACC-002', 'MetroBank', 'Savings', 'EUR', 180000.00, 0.00, 0.5, '2019-05-20', '2023-03-30', 0, 'MTBDEFF', 'DE00MTB000002', 'TID67890', 1, 'Compliant', '2023-04-01 11:10:00', '2023-04-01 11:10:00', 'Savings for future', 500000.00, 0.00, 0.00, 0, '2023-01-20', 'Pass', 1, 'BobGreen');
INSERT INTO hero_financial_account VALUES (3, 103, 'ACC-003', 'SecureBank', 'Investment', 'GBP', 750000.00, 200000.00, 2.0, '2021-09-15', '2023-03-29', 1, 'SBKGB22', 'GB00SBK000003', 'TID54321', 1, 'Pending', '2023-04-01 11:20:00', '2023-04-01 11:20:00', 'High risk investments', 2000000.00, 300000.00, 4.5, 48, '2023-03-01', 'Pass', 3, 'CarolWhite');

-- Hero media license agreement
CREATE TABLE hero_media_license_agreement
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    media_type TEXT,
    licensee_name TEXT,
    agreement_title TEXT,
    effective_date DATE,
    expiration_date DATE,
    royalty_percent DECIMAL,
    territory TEXT,
    exclusivity BOOLEAN,
    license_fee DECIMAL,
    payment_schedule TEXT,
    renewal_option BOOLEAN,
    termination_clause TEXT,
    governing_law TEXT,
    signature_date DATE,
    signed_by TEXT,
    audit_rights BOOLEAN,
    confidentiality_level TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    notes TEXT,
    amendment_count INTEGER,
    status TEXT,
    dispute_resolution TEXT,
    digital_copy_path TEXT,
    compliance_checked BOOLEAN
);
INSERT INTO hero_media_license_agreement VALUES (1, 101, 'Film', 'StudioX', 'HeroFilmLicense', '2022-03-01', '2027-03-01', 7.5, 'Worldwide', 1, 2000000.00, 'Annual', 1, '30 day notice', 'US', '2022-02-20', 'JaneDoe', 1, 'High', '2023-04-01 12:00:00', '2023-04-01 12:00:00', 'First film license', 0, 'Active', 'Arbitration', '/licenses/film101.pdf', 1);
INSERT INTO hero_media_license_agreement VALUES (2, 102, 'VideoGame', 'GameStudioY', 'HeroGameLicense', '2021-06-15', '2026-06-15', 5.0, 'NorthAmerica', 0, 1500000.00, 'Quarterly', 1, '60 day notice', 'CA', '2021-06-01', 'JohnSmith', 1, 'Medium', '2023-04-01 12:10:00', '2023-04-01 12:10:00', 'First game license', 1, 'Renewed', 'Mediation', '/licenses/game102.pdf', 1);
INSERT INTO hero_media_license_agreement VALUES (3, 103, 'TVSeries', 'NetworkZ', 'HeroSeriesLicense', '2023-01-01', '2028-01-01', 6.0, 'Europe', 1, 1200000.00, 'SemiAnnual', 0, '45 day notice', 'UK', '2022-12-15', 'EmilyClark', 0, 'High', '2023-04-01 12:20:00', '2023-04-01 12:20:00', 'Series license pending', 0, 'Pending', 'Arbitration', '/licenses/series103.pdf', 0);

-- Hero sponsorship engagement
CREATE TABLE hero_sponsorship_engagement
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    sponsor_name TEXT,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    sponsorship_amount DECIMAL,
    deliverables TEXT,
    activation_events TEXT,
    branding_guidelines TEXT,
    exclusivity BOOLEAN,
    region TEXT,
    target_audience TEXT,
    performance_metrics TEXT,
    reporting_frequency TEXT,
    contract_signed_date DATE,
    contract_file_path TEXT,
    is_active BOOLEAN,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    renewal_option BOOLEAN,
    renewal_terms TEXT,
    audit_rights BOOLEAN,
    compliance_status TEXT,
    last_audit_date DATE,
    audit_outcome TEXT,
    risk_assessment TEXT,
    manager_contact TEXT,
    contact_email TEXT
);
INSERT INTO hero_sponsorship_engagement VALUES (1, 101, 'EnergyCo', 'PowerUpCampaign', '2022-02-01', '2023-02-01', 500000.00, 'LogoOnSuit', 'CityParade', 'BrandGuideV1', 1, 'Global', 'YoungAdults', 'ImpressionsClicks', 'Monthly', '2022-01-20', '/sponsorships/energyco101.pdf', 0, 'Campaign ended', '2023-04-01 13:00:00', '2023-04-01 13:00:00', 1, 'RenewableEnergyFocus', 1, 'Compliant', '2023-02-10', 'Pass', 'Low', 'MarkLee', 'mark.lee@energyco.com');
INSERT INTO hero_sponsorship_engagement VALUES (2, 102, 'TechGiant', 'FutureTechSeries', '2021-05-15', '2024-05-15', 1200000.00, 'ProductPlacement', 'TechExpo', 'StyleGuide2021', 0, 'NorthAmerica', 'TechEnthusiasts', 'ViewsConversions', 'Quarterly', '2021-04-30', '/sponsorships/techgiant102.pdf', 1, 'Ongoing series', '2023-04-01 13:10:00', '2023-04-01 13:10:00', 1, 'ExtendedTerm', 1, 'Compliant', '2023-03-01', 'Pass', 'Medium', 'SofiaMartinez', 'sofia.m@techgiant.com');
INSERT INTO hero_sponsorship_engagement VALUES (3, 103, 'AutoDrive', 'SpeedRevCampaign', '2023-03-01', '2025-03-01', 800000.00, 'VehicleShowcase', 'RacingEvent', 'AutoBrandGuide', 1, 'Europe', 'AutoFans', 'AttendanceSales', 'BiAnnual', '2023-02-20', '/sponsorships/autodrive103.pdf', 1, 'Kickoff in March', '2023-04-01 13:20:00', '2023-04-01 13:20:00', 0, NULL, 0, 'Pending', NULL, NULL, 'High', 'LiamNg', 'liam.ng@autodrive.eu');

-- Hero public speaking event
CREATE TABLE hero_public_speaking_event
(
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    event_name TEXT,
    venue_name TEXT,
    city TEXT,
    country TEXT,
    event_date DATE,
    speaking_topic TEXT,
    audience_size INTEGER,
    event_type TEXT,
    organizer TEXT,
    fee_amount DECIMAL,
    travel_expenses DECIMAL,
    accommodation_details TEXT,
    equipment_provided TEXT,
    speech_duration_minutes INTEGER,
    language TEXT,
    broadcast_live BOOLEAN,
    live_stream_url TEXT,
    media_coverage_path TEXT,
    feedback_score INTEGER,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    is_confirmed BOOLEAN,
    contract_signed BOOLEAN,
    contract_file_path TEXT,
    post_event_report_path TEXT,
    speaker_bio_path TEXT,
    sponsor_name TEXT,
    sponsorship_amount DECIMAL,
    registration_deadline DATE,
    covid_protocols TEXT,
    accessibility_features TEXT,
    security_level TEXT,
    emergency_contact TEXT,
    emergency_phone TEXT
);
INSERT INTO hero_public_speaking_event VALUES (1, 101, 'Future of Justice', 'Grand Hall', 'Metropolis', 'Fictionland', '2023-06-15', 'EthicsInPower', 2000, 'Conference', 'JusticeLeague', 25000.00, 5000.00, 'HotelSuite', 'ProjectorMic', 45, 'English', 1, 'http://stream.example.com/justice2023', '/media/coverage101.pdf', 9, 'Well received', '2023-04-01 14:00:00', '2023-04-01 14:00:00', 1, 1, '/contracts/event101.pdf', '/reports/post101.pdf', '/bios/hero101.pdf', 'EnergyCo', 100000.00, '2023-05-01', 'MasksVaccines', 'WheelchairRamp', 'High', 'JohnDoe', '5551234');
INSERT INTO hero_public_speaking_event VALUES (2, 102, 'Tech Innovations', 'Innovation Center', 'TechCity', 'Utopia', '2023-09-10', 'AIAndSociety', 1500, 'Seminar', 'TechHub', 18000.00, 3000.00, 'BusinessHotel', 'ScreenLaser', 30, 'English', 0, NULL, '/media/coverage102.pdf', 8, 'Positive feedback', '2023-04-01 14:10:00', '2023-04-01 14:10:00', 1, 1, '/contracts/event102.pdf', '/reports/post102.pdf', '/bios/hero102.pdf', 'TechGiant', 200000.00, '2023-08-01', 'VaccinatedOnly', 'AssistiveListening', 'Medium', 'JaneSmith', '5555678');
INSERT INTO hero_public_speaking_event VALUES (3, 103, 'Sustainable Mobility', 'Eco Arena', 'GreenVille', 'EcoLand', '2024-02-20', 'FutureTransport', 2500, 'Summit', 'EcoAlliance', 30000.00, 7000.00, 'EcoResort', 'AudioVisual', 60, 'English', 1, 'http://stream.example.com/eco2024', '/media/coverage103.pdf', 10, 'Excellent reception', '2023-04-01 14:20:00', '2023-04-01 14:20:00', 0, 0, NULL, NULL, NULL, 'AutoDrive', 150000.00, '2024-01-15', 'AllVaccinated', 'SignLanguage', 'High', 'MikeTaylor', '5559012');