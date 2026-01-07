-- Regulatory compliance records for various jurisdictions
CREATE TABLE regulatory_compliance_records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    region TEXT,
    jurisdiction_code TEXT,
    compliance_type TEXT,
    status TEXT,
    effective_date DATE,
    expiry_date DATE,
    review_cycle INTEGER,
    last_audit_date DATE,
    audit_outcome TEXT,
    responsible_officer TEXT,
    contact_email TEXT,
    documentation_url TEXT,
    penalty_amount REAL,
    notes TEXT,
    reference_number TEXT,
    created_at DATE,
    updated_at DATE,
    risk_score INTEGER,
    mitigation_plan TEXT,
    compliance_score REAL,
    external_audit_required INTEGER
);

INSERT INTO regulatory_compliance_records (region, jurisdiction_code, compliance_type, status, effective_date, expiry_date, review_cycle, last_audit_date, audit_outcome, responsible_officer, contact_email, documentation_url, penalty_amount, notes, reference_number, created_at, updated_at, risk_score, mitigation_plan, compliance_score, external_audit_required) VALUES ('NorthAmerica', 'US-CA', 'DataPrivacy', 'Compliant', '2023-01-01', '2025-12-31', 12, '2024-03-15', 'Pass', 'John Doe', 'john.doe@example.com', 'http://example.com/doc1', 0.0, 'No issues', 'REF001', '2023-01-01', '2024-03-15', 5, 'Annual review', 98.5, 0);
INSERT INTO regulatory_compliance_records (region, jurisdiction_code, compliance_type, status, effective_date, expiry_date, review_cycle, last_audit_date, audit_outcome, responsible_officer, contact_email, documentation_url, penalty_amount, notes, reference_number, created_at, updated_at, risk_score, mitigation_plan, compliance_score, external_audit_required) VALUES ('Europe', 'DE', 'Environmental', 'Pending', '2022-06-01', '2024-05-31', 6, '2023-11-20', 'Fail', 'Anna Schmidt', 'anna.s@example.eu', 'http://example.eu/doc2', 15000.0, 'Requires remediation', 'REF002', '2022-06-01', '2023-11-20', 8, 'Remediation plan', 45.0, 1);
INSERT INTO regulatory_compliance_records (region, jurisdiction_code, compliance_type, status, effective_date, expiry_date, review_cycle, last_audit_date, audit_outcome, responsible_officer, contact_email, documentation_url, penalty_amount, notes, reference_number, created_at, updated_at, risk_score, mitigation_plan, compliance_score, external_audit_required) VALUES ('Asia', 'JP', 'Financial', 'Compliant', '2021-04-01', '2023-03-31', 12, '2022-08-05', 'Pass', 'Takashi Ito', 'takashi.i@example.jp', 'http://example.jp/doc3', 0.0, 'All good', 'REF003', '2021-04-01', '2022-08-05', 3, 'Routine monitoring', 92.0, 0);

-- Warehouse inventory snapshots
CREATE TABLE warehouse_inventory_snapshots (
    snapshot_id INTEGER PRIMARY KEY AUTOINCREMENT,
    warehouse_id TEXT,
    location_code TEXT,
    product_category TEXT,
    sku TEXT,
    quantity INTEGER,
    batch_number TEXT,
    received_date DATE,
    expiration_date DATE,
    temperature REAL,
    humidity REAL,
    inspector_name TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    safety_rating INTEGER,
    audit_flag INTEGER,
    third_party_verified INTEGER,
    storage_zone TEXT,
    pallet_count INTEGER,
    weight_kg REAL,
    volume_cubic_meters REAL
);

INSERT INTO warehouse_inventory_snapshots (warehouse_id, location_code, product_category, sku, quantity, batch_number, received_date, expiration_date, temperature, humidity, inspector_name, notes, created_at, updated_at, safety_rating, audit_flag, third_party_verified, storage_zone, pallet_count, weight_kg, volume_cubic_meters) VALUES ('WH001', 'A1', 'Cards', 'SKU12345', 5000, 'BATCH01', '2024-01-10', '2026-01-10', 22.5, 45.0, 'Mike Lee', 'First load', '2024-01-10', '2024-01-10', 9, 0, 1, 'ZoneA', 20, 1500.0, 12.5);
INSERT INTO warehouse_inventory_snapshots (warehouse_id, location_code, product_category, sku, quantity, batch_number, received_date, expiration_date, temperature, humidity, inspector_name, notes, created_at, updated_at, safety_rating, audit_flag, third_party_verified, storage_zone, pallet_count, weight_kg, volume_cubic_meters) VALUES ('WH002', 'B3', 'Merchandise', 'SKU67890', 250, 'BATCH07', '2023-11-05', '2025-11-05', 18.0, 40.0, 'Sara Kim', 'Checked humidity', '2023-11-05', '2023-12-01', 8, 1, 0, 'ZoneC', 2, 300.0, 2.0);
INSERT INTO warehouse_inventory_snapshots (warehouse_id, location_code, product_category, sku, quantity, batch_number, received_date, expiration_date, temperature, humidity, inspector_name, notes, created_at, updated_at, safety_rating, audit_flag, third_party_verified, storage_zone, pallet_count, weight_kg, volume_cubic_meters) VALUES ('WH003', 'C2', 'Accessories', 'SKU54321', 1200, 'BATCH12', '2024-02-20', '2028-02-20', 20.0, 42.0, 'Liam Wong', 'All good', '2024-02-20', '2024-02-20', 10, 0, 1, 'ZoneB', 5, 800.0, 6.8);

-- Artifact ownership records
CREATE TABLE artifact_ownership (
    artifact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    uuid TEXT,
    owner_user_id INTEGER,
    acquisition_date DATE,
    acquisition_method TEXT,
    purchase_price REAL,
    market_value REAL,
    provenance TEXT,
    storage_location TEXT,
    insurance_policy TEXT,
    insurance_value REAL,
    condition_grade TEXT,
    last_appraisal_date DATE,
    appraisal_value REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    transfer_count INTEGER,
    current_status TEXT,
    loan_to_institution TEXT,
    loan_start_date DATE,
    loan_end_date DATE
);

INSERT INTO artifact_ownership (uuid, owner_user_id, acquisition_date, acquisition_method, purchase_price, market_value, provenance, storage_location, insurance_policy, insurance_value, condition_grade, last_appraisal_date, appraisal_value, notes, created_at, updated_at, transfer_count, current_status, loan_to_institution, loan_start_date, loan_end_date) VALUES ('ART-001', 101, '2022-05-15', 'Purchase', 2500.0, 3200.0, 'Original', 'VaultA', 'POL123', 5000.0, 'Mint', '2023-04-01', 3400.0, 'No issues', '2022-05-15', '2023-04-01', 0, 'Owned', NULL, NULL, NULL);
INSERT INTO artifact_ownership (uuid, owner_user_id, acquisition_date, acquisition_method, purchase_price, market_value, provenance, storage_location, insurance_policy, insurance_value, condition_grade, last_appraisal_date, appraisal_value, notes, created_at, updated_at, transfer_count, current_status, loan_to_institution, loan_start_date, loan_end_date) VALUES ('ART-002', 102, '2021-09-20', 'Donation', 0.0, 1500.0, 'CollectorA', 'VaultB', 'POL456', 2000.0, 'Excellent', '2022-10-10', 1600.0, 'Needs cleaning', '2021-09-20', '2022-10-10', 1, 'OnLoan', 'MuseumX', '2022-11-01', '2023-11-01');
INSERT INTO artifact_ownership (uuid, owner_user_id, acquisition_date, acquisition_method, purchase_price, market_value, provenance, storage_location, insurance_policy, insurance_value, condition_grade, last_appraisal_date, appraisal_value, notes, created_at, updated_at, transfer_count, current_status, loan_to_institution, loan_start_date, loan_end_date) VALUES ('ART-003', 103, '2023-01-05', 'Trade', 800.0, 950.0, 'TraderB', 'VaultC', 'POL789', 1200.0, 'Good', '2023-06-15', 970.0, 'Minor wear', '2023-01-05', '2023-06-15', 0, 'Owned', NULL, NULL, NULL);

-- Newsroom articles
CREATE TABLE newsroom_articles (
    article_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    slug TEXT,
    author_id INTEGER,
    publish_date DATE,
    category TEXT,
    tags TEXT,
    summary TEXT,
    content TEXT,
    image_url TEXT,
    view_count INTEGER,
    share_count INTEGER,
    comment_count INTEGER,
    seo_keywords TEXT,
    meta_description TEXT,
    is_featured INTEGER,
    rating REAL,
    editor_notes TEXT,
    created_at DATE,
    updated_at DATE,
    source_platform TEXT,
    external_reference TEXT
);

INSERT INTO newsroom_articles (title, slug, author_id, publish_date, category, tags, summary, content, image_url, view_count, share_count, comment_count, seo_keywords, meta_description, is_featured, rating, editor_notes, created_at, updated_at, source_platform, external_reference) VALUES ('New Set Release Announced', 'new-set-release-announced', 1, '2024-03-01', 'Release', 'set,release,mtg', 'Official announcement of the upcoming set.', 'Full article content goes here.', 'http://example.com/img1.jpg', 1200, 300, 45, 'mtg set release', 'Announcing the new set', 1, 4.5, 'Check for typos', '2024-03-01', '2024-03-01', 'Website', 'REFART001');
INSERT INTO newsroom_articles (title, slug, author_id, publish_date, category, tags, summary, content, image_url, view_count, share_count, comment_count, seo_keywords, meta_description, is_featured, rating, editor_notes, created_at, updated_at, source_platform, external_reference) VALUES ('Tournament Highlights', 'tournament-highlights', 2, '2024-02-20', 'Event', 'tournament,highlights', 'Recap of the latest tournament.', 'Detailed tournament recap.', 'http://example.com/img2.jpg', 850, 150, 30, 'mtg tournament recap', 'Highlights from the tournament', 0, 4.0, 'Add player quotes', '2024-02-20', '2024-02-20', 'Blog', 'REFART002');
INSERT INTO newsroom_articles (title, slug, author_id, publish_date, category, tags, summary, content, image_url, view_count, share_count, comment_count, seo_keywords, meta_description, is_featured, rating, editor_notes, created_at, updated_at, source_platform, external_reference) VALUES ('Community Spotlight', 'community-spotlight', 3, '2024-01-15', 'Community', 'community,spotlight', 'Featuring a community member.', 'Story about community contributions.', 'http://example.com/img3.jpg', 600, 80, 12, 'mtg community', 'Spotlight on community member', 0, 3.8, 'Verify image rights', '2024-01-15', '2024-01-15', 'Newsletter', 'REFART003');

-- Budget forecasts
CREATE TABLE budget_forecasts (
    forecast_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fiscal_year INTEGER,
    quarter INTEGER,
    department TEXT,
    allocated_budget REAL,
    spent_to_date REAL,
    remaining_budget REAL,
    variance REAL,
    approved_by TEXT,
    approval_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    forecast_version INTEGER,
    confidence_level REAL,
    risk_factor INTEGER,
    cost_center_code TEXT,
    expense_category TEXT,
    projected_growth REAL,
    currency_code TEXT,
    exchange_rate REAL
);

INSERT INTO budget_forecasts (fiscal_year, quarter, department, allocated_budget, spent_to_date, remaining_budget, variance, approved_by, approval_date, notes, created_at, updated_at, forecast_version, confidence_level, risk_factor, cost_center_code, expense_category, projected_growth, currency_code, exchange_rate) VALUES (2024, 1, 'Marketing', 500000.0, 120000.0, 380000.0, 0.0, 'Alice Smith', '2023-12-01', 'Initial Q1 forecast', '2023-12-01', '2023-12-01', 1, 0.95, 2, 'CC100', 'Advertising', 0.05, 'USD', 1.0);
INSERT INTO budget_forecasts (fiscal_year, quarter, department, allocated_budget, spent_to_date, remaining_budget, variance, approved_by, approval_date, notes, created_at, updated_at, forecast_version, confidence_level, risk_factor, cost_center_code, expense_category, projected_growth, currency_code, exchange_rate) VALUES (2024, 1, 'Operations', 800000.0, 300000.0, 500000.0, -20000.0, 'Bob Jones', '2023-12-02', 'Adjusted for equipment delay', '2023-12-02', '2023-12-15', 2, 0.85, 3, 'CC200', 'Logistics', 0.03, 'USD', 1.0);
INSERT INTO budget_forecasts (fiscal_year, quarter, department, allocated_budget, spent_to_date, remaining_budget, variance, approved_by, approval_date, notes, created_at, updated_at, forecast_version, confidence_level, risk_factor, cost_center_code, expense_category, projected_growth, currency_code, exchange_rate) VALUES (2024, 1, 'Research', 300000.0, 50000.0, 250000.0, 5000.0, 'Carol Lee', '2023-12-03', 'Include new grant funds', '2023-12-03', '2023-12-10', 1, 0.90, 1, 'CC300', 'R&D', 0.07, 'USD', 1.0);

-- Shipping incidents
CREATE TABLE shipping_incidents (
    incident_id INTEGER PRIMARY KEY AUTOINCREMENT,
    shipment_id TEXT,
    carrier TEXT,
    origin TEXT,
    destination TEXT,
    incident_date DATE,
    incident_type TEXT,
    description TEXT,
    delay_hours INTEGER,
    damage_reported INTEGER,
    loss_value REAL,
    resolved INTEGER,
    resolution_date DATE,
    responsible_party TEXT,
    compensation_amount REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    severity_level INTEGER,
    follow_up_required INTEGER,
    corrective_action TEXT
);

INSERT INTO shipping_incidents (shipment_id, carrier, origin, destination, incident_date, incident_type, description, delay_hours, damage_reported, loss_value, resolved, resolution_date, responsible_party, compensation_amount, notes, created_at, updated_at, severity_level, follow_up_required, corrective_action) VALUES ('SHIP001', 'FastFreight', 'LosAngeles', 'NewYork', '2024-02-10', 'Delay', 'Traffic jam caused delay', 12, 0, 0.0, 1, '2024-02-15', 'FastFreight', 0.0, 'No further action', '2024-02-10', '2024-02-15', 2, 0, 'Monitor route');
INSERT INTO shipping_incidents (shipment_id, carrier, origin, destination, incident_date, incident_type, description, delay_hours, damage_reported, loss_value, resolved, resolution_date, responsible_party, compensation_amount, notes, created_at, updated_at, severity_level, follow_up_required, corrective_action) VALUES ('SHIP002', 'GlobalLogistics', 'Chicago', 'Miami', '2024-01-20', 'Damage', 'Box cracked during handling', 0, 1, 2500.0, 1, '2024-01-25', 'GlobalLogistics', 2500.0, 'Replaced goods', '2024-01-20', '2024-01-25', 4, 1, 'Improve packaging');
INSERT INTO shipping_incidents (shipment_id, carrier, origin, destination, incident_date, incident_type, description, delay_hours, damage_reported, loss_value, resolved, resolution_date, responsible_party, compensation_amount, notes, created_at, updated_at, severity_level, follow_up_required, corrective_action) VALUES ('SHIP003', 'ExpressShip', 'Seattle', 'Denver', '2024-03-05', 'Loss', 'Package misplaced', 0, 1, 1500.0, 0, NULL, 'ExpressShip', 0.0, 'Investigation pending', '2024-03-05', '2024-03-05', 5, 1, 'Audit tracking system');

-- Customer loyalty program
CREATE TABLE customer_loyalty_program (
    loyalty_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    tier TEXT,
    points_balance INTEGER,
    enrollment_date DATE,
    last_activity_date DATE,
    next_tier_eligibility_date DATE,
    reward_status TEXT,
    email_opt_in INTEGER,
    sms_opt_in INTEGER,
    preferred_contact_method TEXT,
    birthday DATE,
    anniversary DATE,
    referral_code TEXT,
    total_spent REAL,
    average_order_value REAL,
    purchase_frequency INTEGER,
    last_reward_redemption DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    marketing_segment TEXT
);

INSERT INTO customer_loyalty_program (customer_id, tier, points_balance, enrollment_date, last_activity_date, next_tier_eligibility_date, reward_status, email_opt_in, sms_opt_in, preferred_contact_method, birthday, anniversary, referral_code, total_spent, average_order_value, purchase_frequency, last_reward_redemption, notes, created_at, updated_at, marketing_segment) VALUES (2001, 'Gold', 12450, '2022-05-10', '2024-02-28', '2024-06-01', 'Active', 1, 0, 'Email', '1990-07-15', NULL, 'REF2022', 13200.0, 150.0, 88, '2024-02-15', 'Preferred customer', '2022-05-10', '2024-02-28', 'HighValue');
INSERT INTO customer_loyalty_program (customer_id, tier, points_balance, enrollment_date, last_activity_date, next_tier_eligibility_date, reward_status, email_opt_in, sms_opt_in, preferred_contact_method, birthday, anniversary, referral_code, total_spent, average_order_value, purchase_frequency, last_reward_redemption, notes, created_at, updated_at, marketing_segment) VALUES (2002, 'Silver', 6800, '2023-01-20', '2024-03-02', '2024-07-20', 'Active', 1, 1, 'SMS', '1985-11-30', '2015-11-30', 'REF2023', 8200.0, 95.0, 45, '2024-02-20', 'Occasional buyer', '2023-01-20', '2024-03-02', 'MidValue');
INSERT INTO customer_loyalty_program (customer_id, tier, points_balance, enrollment_date, last_activity_date, next_tier_eligibility_date, reward_status, email_opt_in, sms_opt_in, preferred_contact_method, birthday, anniversary, referral_code, total_spent, average_order_value, purchase_frequency, last_reward_redemption, notes, created_at, updated_at, marketing_segment) VALUES (2003, 'Bronze', 1200, '2021-09-05', '2024-01-12', '2024-05-01', 'Inactive', 0, 0, 'None', '1995-03-22', NULL, 'REF2021', 1500.0, 50.0, 10, NULL, 'Low activity', '2021-09-05', '2024-01-12', 'LowValue');

-- Media license agreements
CREATE TABLE media_license_agreements (
    agreement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    media_id TEXT,
    licensee TEXT,
    licensor TEXT,
    start_date DATE,
    end_date DATE,
    territory TEXT,
    exclusivity TEXT,
    fee_amount REAL,
    royalty_rate REAL,
    payment_schedule TEXT,
    compliance_requirements TEXT,
    delivery_format TEXT,
    quality_standards TEXT,
    audit_rights TEXT,
    termination_clause TEXT,
    renewal_option TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    version INTEGER
);

INSERT INTO media_license_agreements (media_id, licensee, licensor, start_date, end_date, territory, exclusivity, fee_amount, royalty_rate, payment_schedule, compliance_requirements, delivery_format, quality_standards, audit_rights, termination_clause, renewal_option, notes, created_at, updated_at, status, version) VALUES ('MED001', 'StreamCo', 'WizardGames', '2024-01-01', '2026-12-31', 'Global', 'Exclusive', 500000.0, 5.0, 'Annual', 'None', 'HD', '1080p', 'Yes', '30day', 'Option2Y', 'First agreement', '2024-01-01', '2024-01-01', 'Active', 1);
INSERT INTO media_license_agreements (media_id, licensee, licensor, start_date, end_date, territory, exclusivity, fee_amount, royalty_rate, payment_schedule, compliance_requirements, delivery_format, quality_standards, audit_rights, termination_clause, renewal_option, notes, created_at, updated_at, status, version) VALUES ('MED002', 'GameHub', 'WizardGames', '2023-06-15', '2025-06-14', 'Europe', 'NonExclusive', 200000.0, 3.5, 'Quarterly', 'EUCompliance', 'SD', '720p', 'No', '60day', 'Option1Y', 'Renewable after 2 years', '2023-06-15', '2023-06-15', 'Active', 1);
INSERT INTO media_license_agreements (media_id, licensee, licensor, start_date, end_date, territory, exclusivity, fee_amount, royalty_rate, payment_schedule, compliance_requirements, delivery_format, quality_standards, audit_rights, termination_clause, renewal_option, notes, created_at, updated_at, status, version) VALUES ('MED003', 'ArcadeWorld', 'WizardGames', '2022-03-01', '2024-02-28', 'Asia', 'Exclusive', 300000.0, 4.0, 'SemiAnnual', 'AsiaRegulations', '4K', '4K', 'Yes', '90day', 'Option3Y', 'Extended support', '2022-03-01', '2023-12-01', 'Expired', 2);

-- World event calendar
CREATE TABLE world_event_calendar (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    location TEXT,
    timezone TEXT,
    organizer TEXT,
    expected_attendance INTEGER,
    registration_url TEXT,
    livestream_url TEXT,
    sponsor_list TEXT,
    ticket_price REAL,
    currency TEXT,
    age_restriction INTEGER,
    description TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    featured_flag INTEGER,
    public_access INTEGER
);

INSERT INTO world_event_calendar (event_name, event_type, start_date, end_date, location, timezone, organizer, expected_attendance, registration_url, livestream_url, sponsor_list, ticket_price, currency, age_restriction, description, notes, created_at, updated_at, status, featured_flag, public_access) VALUES ('Spring Championship', 'Tournament', '2024-04-10', '2024-04-12', 'SanFrancisco', 'PST', 'MTGLeague', 2500, 'http://register.example.com/spring2024', 'http://stream.example.com/spring2024', 'SponsorA,SponsorB', 99.0, 'USD', 13, 'Annual spring tournament', 'All brackets open', '2024-01-15', '2024-01-15', 'Scheduled', 1, 1);
INSERT INTO world_event_calendar (event_name, event_type, start_date, end_date, location, timezone, organizer, expected_attendance, registration_url, livestream_url, sponsor_list, ticket_price, currency, age_restriction, description, notes, created_at, updated_at, status, featured_flag, public_access) VALUES ('Winter Expo', 'Convention', '2024-12-01', '2024-12-04', 'Berlin', 'CET', 'GlobalGames', 8000, 'http://register.example.com/winter2024', 'http://stream.example.com/winter2024', 'SponsorX,SponsorY', 149.0, 'EUR', 0, 'Gaming and collectibles expo', 'Includes panel talks', '2024-02-20', '2024-02-20', 'Planned', 0, 1);
INSERT INTO world_event_calendar (event_name, event_type, start_date, end_date, location, timezone, organizer, expected_attendance, registration_url, livestream_url, sponsor_list, ticket_price, currency, age_restriction, description, notes, created_at, updated_at, status, featured_flag, public_access) VALUES ('Online Master Series', 'OnlineTournament', '2024-09-15', '2024-09-15', 'Online', 'UTC', 'eSportsOrg', 1200, 'http://register.example.com/masters2024', 'http://stream.example.com/masters2024', 'SponsorOnline', 0.0, 'USD', 0, 'Seasonal online competition', 'No physical venue', '2024-04-01', '2024-04-01', 'Open', 0, 1);

-- Equipment maintenance logs
CREATE TABLE equipment_maintenance_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id TEXT,
    equipment_type TEXT,
    location TEXT,
    maintenance_type TEXT,
    scheduled_date DATE,
    performed_date DATE,
    technician_name TEXT,
    technician_id INTEGER,
    parts_used TEXT,
    parts_cost REAL,
    labor_hours REAL,
    total_cost REAL,
    downtime_hours INTEGER,
    next_maintenance_date DATE,
    maintenance_status TEXT,
    comments TEXT,
    created_at DATE,
    updated_at DATE,
    safety_check_passed INTEGER,
    compliance_verified INTEGER,
    warranty_covered INTEGER
);

INSERT INTO equipment_maintenance_logs (equipment_id, equipment_type, location, maintenance_type, scheduled_date, performed_date, technician_name, technician_id, parts_used, parts_cost, labor_hours, total_cost, downtime_hours, next_maintenance_date, maintenance_status, comments, created_at, updated_at, safety_check_passed, compliance_verified, warranty_covered) VALUES ('EQ001', 'Printer', 'WarehouseA', 'Preventive', '2024-03-01', '2024-03-01', 'Tom Reed', 301, 'InkCartridge', 45.0, 2.0, 60.0, 1, '2024-06-01', 'Completed', 'All good', '2024-03-01', '2024-03-01', 1, 1, 1);
INSERT INTO equipment_maintenance_logs (equipment_id, equipment_type, location, maintenance_type, scheduled_date, performed_date, technician_name, technician_id, parts_used, parts_cost, labor_hours, total_cost, downtime_hours, next_maintenance_date, maintenance_status, comments, created_at, updated_at, safety_check_passed, compliance_verified, warranty_covered) VALUES ('EQ002', 'HVAC', 'VenueB', 'Repair', '2024-02-15', '2024-02-16', 'Sara Patel', 302, 'Compressor,Filter', 250.0, 5.0, 525.0, 4, '2024-08-15', 'Completed', 'Replaced compressor', '2024-02-15', '2024-02-16', 1, 1, 0);
INSERT INTO equipment_maintenance_logs (equipment_id, equipment_type, location, maintenance_type, scheduled_date, performed_date, technician_name, technician_id, parts_used, parts_cost, labor_hours, total_cost, downtime_hours, next_maintenance_date, maintenance_status, comments, created_at, updated_at, safety_check_passed, compliance_verified, warranty_covered) VALUES ('EQ003', 'Projector', 'ConferenceRoom1', 'Calibration', '2024-04-10', '2024-04-10', 'Luis Gomez', 303, 'Lens,Bulb', 120.0, 1.5, 180.0, 2, '2024-07-10', 'Completed', 'Brightness adjusted', '2024-04-10', '2024-04-10', 1, 1, 1);