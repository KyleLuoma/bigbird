-- Energy audit records for each venue
CREATE TABLE venue_energy_audits (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    audit_date DATE,
    auditor_name TEXT,
    total_energy_kwh REAL,
    renewable_percent REAL,
    peak_demand_kw REAL,
    hvac_efficiency REAL,
    lighting_efficiency REAL,
    waste_to_energy_pct REAL,
    carbon_emission_tons REAL,
    notes TEXT,
    recommendation_summary TEXT,
    follow_up_date DATE,
    compliance_status TEXT,
    electricity_rate REAL,
    gas_rate REAL,
    water_rate REAL,
    cooling_system_type TEXT,
    heating_system_type TEXT,
    audit_version INTEGER
);

INSERT INTO venue_energy_audits VALUES (1, 101, '2024-03-15', 'John Doe', 1250000.5, 45.2, 3200.0, 0.85, 0.78, 12.5, 350.0, 'Annual audit', 'Upgrade HVAC filters', '2024-06-01', 'Compliant', 0.12, 0.08, 0.03, 'Chiller', 'Boiler', 1);
INSERT INTO venue_energy_audits VALUES (2, 102, '2024-04-10', 'Jane Smith', 980000.0, 52.0, 2800.0, 0.88, 0.80, 10.0, 290.0, 'Quarterly audit', 'Install LED lighting', '2024-07-15', 'Pending', 0.11, 0.07, 0.025, 'Heat Pump', 'Radiator', 1);
INSERT INTO venue_energy_audits VALUES (3, 103, '2024-05-05', 'Mike Lee', 1100000.0, 48.5, 3000.0, 0.86, 0.79, 11.2, 315.0, 'Bi-annual audit', 'Add solar panels', '2024-08-20', 'Compliant', 0.115, 0.075, 0.028, 'Cooling Tower', 'Furnace', 1);

-- Health survey data collected from spectators
CREATE TABLE spectator_health_surveys (
    survey_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    survey_date DATE,
    respondent_id INTEGER,
    age_group TEXT,
    gender TEXT,
    health_concerns TEXT,
    vaccination_status TEXT,
    mask_compliance TEXT,
    symptom_reported TEXT,
    medical_aid_used TEXT,
    satisfaction_score INTEGER,
    comments TEXT,
    location_section TEXT,
    time_entered TEXT,
    time_exited TEXT,
    weather_condition TEXT,
    transport_mode TEXT,
    exposure_duration_minutes INTEGER,
    follow_up_needed TEXT
);

INSERT INTO spectator_health_surveys VALUES (1, 201, '2024-06-01', 5001, '18-25', 'Male', 'None', 'Fully', 'Yes', 'None', 'None', 9, 'Great experience', 'Grandstand', '12:30', '14:45', 'Sunny', 'Car', 135, 'No');
INSERT INTO spectator_health_surveys VALUES (2, 202, '2024-06-02', 5002, '26-35', 'Female', 'Asthma', 'Partial', 'Yes', 'Cough', 'First Aid', 7, 'Crowded area', 'Pit Lane', '13:15', '15:30', 'Cloudy', 'Bus', 135, 'Yes');
INSERT INTO spectator_health_surveys VALUES (3, 203, '2024-06-03', 5003, '36-45', 'Other', 'Allergy', 'None', 'No', 'None', 'None', 8, 'Good services', 'VIP Box', '14:00', '16:20', 'Rainy', 'Train', 140, 'No');

-- Equipment used for track maintenance
CREATE TABLE track_maintenance_equipment (
    equipment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    track_id INTEGER,
    equipment_type TEXT,
    manufacturer TEXT,
    model_number TEXT,
    purchase_date DATE,
    warranty_expiry DATE,
    last_service_date DATE,
    service_interval_months INTEGER,
    current_status TEXT,
    location_zone TEXT,
    serial_number TEXT,
    power_rating_kw REAL,
    fuel_type TEXT,
    operational_hours INTEGER,
    assigned_technician_id INTEGER,
    calibration_date DATE,
    next_calibration_due DATE,
    usage_count INTEGER,
    notes TEXT,
    depreciation_value REAL
);

INSERT INTO track_maintenance_equipment VALUES (1, 301, 'Grader', 'Caterpillar', 'GR-500', '2022-01-15', '2025-01-15', '2024-02-20', 12, 'Operational', 'North', 'SN12345', 80.0, 'Diesel', 1200, 401, '2024-03-01', '2024-09-01', 350, 'No issues', 15000.0);
INSERT INTO track_maintenance_equipment VALUES (2, 302, 'Sweeper', 'JohnDeere', 'SW-200', '2021-06-10', '2024-06-10', '2024-01-10', 6, 'Under Repair', 'South', 'SN54321', 45.0, 'Electric', 800, 402, '2023-12-15', '2024-06-15', 420, 'Battery replacement needed', 12000.0);
INSERT INTO track_maintenance_equipment VALUES (3, 303, 'Compactor', 'Volvo', 'CP-300', '2023-03-05', '2026-03-05', '2024-04-05', 12, 'Operational', 'East', 'SN67890', 60.0, 'Diesel', 600, 403, '2024-02-20', '2024-08-20', 210, 'All good', 13000.0);

-- Roster of broadcast crew members for each race
CREATE TABLE broadcast_crew_rosters (
    crew_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    crew_role TEXT,
    person_name TEXT,
    employee_id INTEGER,
    shift_start TIME,
    shift_end TIME,
    contact_number TEXT,
    email_address TEXT,
    certification_level TEXT,
    years_experience INTEGER,
    assigned_equipment TEXT,
    language_proficiency TEXT,
    travel_arrival_date DATE,
    travel_departure_date DATE,
    accommodation_hotel TEXT,
    room_number TEXT,
    meals_provided TEXT,
    overtime_eligible INTEGER,
    performance_rating INTEGER,
    notes TEXT
);

INSERT INTO broadcast_crew_rosters VALUES (1, 401, 'Director', 'Alice Johnson', 1001, '08:00', '16:00', '5551234567', 'alice.j@example.com', 'Level 1', 10, 'Camera A', 'English', '2024-06-01', '2024-06-03', 'Grand Hotel', '101', 'Full', 1, 9, 'Excellent leadership');
INSERT INTO broadcast_crew_rosters VALUES (2, 401, 'Camera Operator', 'Bob Martinez', 1002, '09:00', '17:00', '5559876543', 'bob.m@example.com', 'Level 2', 5, 'Camera B', 'Spanish', '2024-06-01', '2024-06-03', 'Grand Hotel', '102', 'Partial', 1, 8, 'Good angles');
INSERT INTO broadcast_crew_rosters VALUES (3, 402, 'Audio Engineer', 'Carol Lee', 1003, '07:30', '15:30', '5555551234', 'carol.l@example.com', 'Level 1', 8, 'Mixer X', 'English', '2024-07-05', '2024-07-07', 'City Inn', '203', 'Full', 0, 7, 'Clear sound');

-- Financial reports submitted by sponsors
CREATE TABLE sponsor_financial_reports (
    report_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    fiscal_year INTEGER,
    total_spend_usd REAL,
    marketing_spend_usd REAL,
    activation_spend_usd REAL,
    hospitality_spend_usd REAL,
    media_spend_usd REAL,
    digital_spend_usd REAL,
    roi_percentage REAL,
    impressions INTEGER,
    engagements INTEGER,
    brand_awareness_score REAL,
    report_date DATE,
    approved_by TEXT,
    audit_status TEXT,
    notes TEXT,
    currency TEXT,
    exchange_rate_to_usd REAL,
    financial_officer TEXT,
    compliance_flag TEXT,
    tax_document_id TEXT
);

INSERT INTO sponsor_financial_reports VALUES (1, 501, 2023, 2500000.0, 1200000.0, 500000.0, 300000.0, 200000.0, 500000.0, 15.2, 3500000, 120000, 78.5, '2024-01-15', 'Laura King', 'Approved', 'All figures verified', 'USD', 1.0, 'Mark Allen', 'Y', 'TX12345');
INSERT INTO sponsor_financial_reports VALUES (2, 502, 2023, 1800000.0, 800000.0, 400000.0, 250000.0, 150000.0, 300000.0, 12.5, 2600000, 90000, 72.3, '2024-01-20', 'Steven Hall', 'Pending', 'Awaiting audit completion', 'EUR', 1.1, 'Nina Patel', 'N', 'TX67890');
INSERT INTO sponsor_financial_reports VALUES (3, 503, 2023, 3200000.0, 1500000.0, 600000.0, 400000.0, 250000.0, 450000.0, 18.0, 4200000, 150000, 84.1, '2024-01-25', 'Rachel Green', 'Approved', 'Budget exceeded by 2%', 'GBP', 1.3, 'Tom Harper', 'Y', 'TX11223');

-- Facilities used for driver training programs
CREATE TABLE driver_training_facilities (
    facility_id INTEGER PRIMARY KEY AUTOINCREMENT,
    facility_name TEXT,
    location_city TEXT,
    location_country TEXT,
    capacity INTEGER,
    indoor_area_sqm REAL,
    outdoor_area_sqm REAL,
    track_length_km REAL,
    simulator_count INTEGER,
    mechanic_workstations INTEGER,
    medical_center INTEGER,
    gym_area INTEGER,
    swimming_pool INTEGER,
    cafeteria_available INTEGER,
    accommodation_rooms INTEGER,
    distance_to_main_circuit_km REAL,
    year_established INTEGER,
    contact_phone TEXT,
    contact_email TEXT,
    operational_status TEXT,
    notes TEXT,
    director_name TEXT
);

INSERT INTO driver_training_facilities VALUES (1, 'Speed Academy', 'Monaco', 'Monaco', 120, 3500.0, 1500.0, 2.5, 12, 8, 1, 1, 0, 1, 30, 0.8, 1998, '5557778888', 'info@speedacademy.mc', 'Open', 'Renovated 2022', 'Jean Dupont');
INSERT INTO driver_training_facilities VALUES (2, 'Rapid Motorsport Center', 'Melbourne', 'Australia', 90, 2800.0, 1200.0, 3.0, 10, 6, 1, 1, 1, 1, 20, 1.2, 2005, '5558889999', 'contact@rapidmotor.com.au', 'Open', 'Adds new VR simulators', 'Sarah Lee');
INSERT INTO driver_training_facilities VALUES (3, 'Velocity Institute', 'Silverstone', 'UK', 150, 4000.0, 1800.0, 2.8, 15, 10, 1, 1, 0, 1, 40, 0.5, 2010, '5556667777', 'admin@velocity.edu', 'Open', 'Partnered with local university', 'David Smith');

-- Documents preserving circuit heritage
CREATE TABLE circuit_heritage_documents (
    doc_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    document_title TEXT,
    document_type TEXT,
    author TEXT,
    creation_date DATE,
    language TEXT,
    file_format TEXT,
    file_size_kb INTEGER,
    archived_location TEXT,
    description TEXT,
    access_level TEXT,
    digitized INTEGER,
    pages INTEGER,
    preservation_state TEXT,
    related_event_year INTEGER,
    keywords TEXT,
    curator TEXT,
    digitization_date DATE,
    notes TEXT,
    external_reference TEXT,
    confidentiality_flag TEXT
);

INSERT INTO circuit_heritage_documents VALUES (1, 601, 'Founding Charter', 'Legal', 'H. Miller', '1950-04-01', 'English', 'PDF', 850, 'ArchiveRoomA', 'Original charter of the circuit', 'Public', 1, 12, 'Good', 1950, 'charter,founding', 'Laura Bates', '2023-12-01', 'Stored in climate-controlled vault', 'REF001', 'N');
INSERT INTO circuit_heritage_documents VALUES (2, 602, 'Historic Race Results 1975-1990', 'Spreadsheet', 'J. Doe', '1995-06-15', 'English', 'XLSX', 4200, 'ArchiveRoomB', 'Compiled race results', 'Restricted', 1, 250, 'Fair', 1990, 'results,history', 'Michael Gray', '2024-01-10', 'Digitized from paper', 'REF002', 'Y');
INSERT INTO circuit_heritage_documents VALUES (3, 603, 'Photographic Archive Volume 3', 'Image Collection', 'S. Patel', '2005-09-20', 'English', 'ZIP', 125000, 'ArchiveRoomC', 'High-resolution photos of historic events', 'Public', 1, 0, 'Excellent', 2005, 'photos,events', 'Emily Wong', '2024-02-05', 'Includes metadata for each photo', 'REF003', 'N');

-- Inspection logs for race logistics
CREATE TABLE race_logistics_inspections (
    inspection_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    inspection_date DATE,
    inspector_name TEXT,
    area_inspected TEXT,
    safety_compliance INTEGER,
    equipment_checklist TEXT,
    waste_management_check TEXT,
    traffic_flow_check TEXT,
    emergency_procedures_check TEXT,
    notes TEXT,
    follow_up_actions TEXT,
    status TEXT,
    duration_minutes INTEGER,
    weather_conditions TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    road_condition TEXT,
    public_announcement_ready INTEGER,
    compliance_score INTEGER
);

INSERT INTO race_logistics_inspections VALUES (1, 701, '2024-06-10', 'Peter Novak', 'Pit Lane', 1, 'All pumps functional', 'Containers sealed', 'Smooth', 'Reviewed', 'All good', 'No action', 'Closed', 45, 'Sunny', 24.5, 45.0, 12.0, 'Dry', 1, 95);
INSERT INTO race_logistics_inspections VALUES (2, 702, '2024-06-12', 'Linda Ghosh', 'Grandstand', 1, 'Seating secure', 'Recycling bins present', 'One lane closed', 'Drills completed', 'Minor wear on railings', 'Order repairs', 'Open', 60, 'Cloudy', 22.0, 55.0, 8.0, 'Wet', 0, 88);
INSERT INTO race_logistics_inspections VALUES (3, 703, '2024-06-15', 'Ahmed El-Sayed', 'Parking Area', 0, 'Barrier gaps', 'Oil spill noted', 'Congestion at exit', 'First aid stations ready', 'Safety issue detected', 'Repair barriers', 'Open', 70, 'Rainy', 19.3, 70.0, 20.0, 'Mud', 0, 65);

-- Projects aimed at environmental restoration around circuits
CREATE TABLE environmental_restoration_projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    circuit_id INTEGER,
    project_name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    agency_responsible TEXT,
    habitat_type TEXT,
    species_targeted TEXT,
    area_hectares REAL,
    restoration_method TEXT,
    volunteers_count INTEGER,
    staff_hours INTEGER,
    progress_percentage INTEGER,
    outcome_summary TEXT,
    monitoring_plan TEXT,
    compliance_status TEXT,
    funding_source TEXT,
    carbon_sequestration_tons REAL,
    water_quality_improvement REAL,
    notes TEXT,
    project_manager TEXT
);

INSERT INTO environmental_restoration_projects VALUES (1, 801, 'Riverbank Revitalization', '2023-04-01', '2024-04-01', 750000.0, 'EnviroAgency', 'Riparian', 'Otter', 15.2, 'Planting native reeds', 120, 2500, 80, 'Increased otter sightings', 'Quarterly water testing', 'Compliant', 'GovGrant', 180.5, 2.3, 'Seasonal monitoring', 'Katherine Liu');
INSERT INTO environmental_restoration_projects VALUES (2, 802, 'Native Meadow Restoration', '2022-06-15', '2023-12-31', 500000.0, 'GreenTrust', 'Grassland', 'Butterfly', 10.0, 'Seeding wildflowers', 90, 1800, 100, 'Butterfly population doubled', 'Biannual bloom surveys', 'Compliant', 'PrivateDonor', 95.0, 1.1, 'Community involvement', 'Marco Rossi');
INSERT INTO environmental_restoration_projects VALUES (3, 803, 'Wetland Buffer Creation', '2023-09-01', '2025-03-31', 1200000.0, 'ConservationOrg', 'Wetland', 'Frog', 20.5, 'Constructing berms', 150, 3200, 60, 'Improved frog breeding sites', 'Monthly water pH monitoring', 'Pending', 'CorporateSponsor', 210.8, 3.0, 'Long-term maintenance plan', 'Sofia Hernandez');

-- Media coverage reports for each race
CREATE TABLE media_coverage_reports (
    report_id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER,
    report_date DATE,
    media_outlet TEXT,
    coverage_type TEXT,
    audience_reach INTEGER,
    sentiment_score REAL,
    headline TEXT,
    article_url TEXT,
    broadcast_time TEXT,
    duration_minutes INTEGER,
    region TEXT,
    language TEXT,
    journalist_name TEXT,
    editor_name TEXT,
    publication_section TEXT,
    page_number INTEGER,
    clicks INTEGER,
    shares INTEGER,
    comments INTEGER,
    rating INTEGER,
    notes TEXT,
    archive_location TEXT
);

INSERT INTO media_coverage_reports VALUES (1, 901, '2024-06-20', 'Global Sports Daily', 'Article', 2500000, 0.78, 'Championship Thriller', 'http://gsd.com/articles/901', '08:00', 5, 'Europe', 'English', 'Tom Baker', 'Emma Clark', 'Sports', 5, 15000, 1200, 300, 4, 'High engagement', 'ArchiveA');
INSERT INTO media_coverage_reports VALUES (2, 902, '2024-06-21', 'Racing News TV', 'Broadcast', 1800000, 0.65, 'Live Race Coverage', 'http://racingnewstv.com/streams/902', '14:30', 120, 'North America', 'English', 'Laura Miles', 'Mike Davis', 'Live', 0, 0, 0, 0, 5, 'Peak viewership', 'ArchiveB');
INSERT INTO media_coverage_reports VALUES (3, 903, '2024-06-22', 'Speed Magazine', 'Feature', 900000, 0.82, 'Driver Profiles', 'http://speedmag.com/features/903', '09:15', 30, 'Asia', 'English', 'Ravi Patel', 'Sofia Kim', 'Features', 12, 8000, 500, 150, 4, 'Positive feedback', 'ArchiveC');