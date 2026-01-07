-- Community events table
CREATE TABLE community_events (
    event_id INTEGER PRIMARY KEY,
    title TEXT,
    description TEXT,
    start_datetime DATETIME,
    end_datetime DATETIME,
    organizer_user_id INTEGER,
    location TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    max_attendees INTEGER,
    registration_deadline DATETIME,
    is_virtual INTEGER,
    virtual_meeting_url TEXT,
    banner_image_url TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    category TEXT,
    tags TEXT,
    sponsor_company TEXT,
    estimated_budget REAL,
    actual_spent REAL
);

INSERT INTO community_events VALUES (1, 'Hackathon2024', '24hourcodingevent', '2024-06-01 09:00:00', '2024-06-02 09:00:00', 10, 'Tech Hub', 'Metropolis', 'CA', 'USA', 200, '2024-05-25 23:59:59', 0, 'https://meet.example.com/hack2024', 'https://img.example.com/hack2024.png', '2024-04-01 12:00:00', '2024-04-15 09:30:00', 'Technology', 'coding,AI', 'TechCorp', 50000.0, 47000.0);
INSERT INTO community_events VALUES (2, 'DataScienceSummit', 'AnnualDataScienceConference', '2024-09-10 08:00:00', '2024-09-12 18:00:00', 22, 'Conference Center', 'Gotham', 'NY', 'USA', 500, '2024-08-31 23:59:59', 0, 'https://meet.example.com/dss2024', 'https://img.example.com/dss2024.png', '2024-05-20 10:15:00', '2024-06-01 14:45:00', 'Science', 'data,ml,statistics', 'DataInc', 120000.0, 115000.0);
INSERT INTO community_events VALUES (3, 'VirtualArtExpo', 'OnlineArtExhibition', '2024-11-05 10:00:00', '2024-11-20 22:00:00', 35, 'Online', 'N/A', 'N/A', 'Global', 1000, '2024-10-31 23:59:59', 1, 'https://art.example.com/expo2024', 'https://img.example.com/art2024.png', '2024-07-10 09:00:00', '2024-07-15 16:20:00', 'Arts', 'painting,digital', 'ArtWorld', 30000.0, 28000.0);

-- User academic records table
CREATE TABLE user_academic_records (
    record_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    institution_name TEXT,
    degree TEXT,
    field_of_study TEXT,
    start_date DATE,
    end_date DATE,
    gpa REAL,
    honors TEXT,
    thesis_title TEXT,
    advisor_name TEXT,
    campus_location TEXT,
    enrollment_status TEXT,
    credits_completed INTEGER,
    extracurriculars TEXT,
    scholarship_name TEXT,
    scholarship_amount REAL,
    graduation_year INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    is_verified INTEGER,
    notes TEXT,
    transcript_url TEXT
);

INSERT INTO user_academic_records VALUES (1, 101, 'State University', 'Bachelors', 'ComputerScience', '2015-09-01', '2019-06-15', 3.8, 'SummaCumLaude', 'EfficientAlgorithms', 'DrSmith', 'Main Campus', 'Graduated', 120, 'CodingClub,RoboticsTeam', 'TechScholarship', 5000.0, 2019, '2019-07-01 08:00:00', '2020-01-15 12:30:00', 1, 'FullTimeStudent', 'https://transcripts.example.com/101.pdf');
INSERT INTO user_academic_records VALUES (2, 102, 'City College', 'Masters', 'DataAnalytics', '2020-01-10', '2022-05-20', 3.9, 'MagnaCumLaude', 'BigDataInsights', 'ProfLee', 'North Campus', 'Graduated', 60, 'DataClub', 'AnalyticsFellowship', 8000.0, 2022, '2022-06-01 09:15:00', '2022-06-20 14:45:00', 1, 'PartTimeStudent', 'https://transcripts.example.com/102.pdf');
INSERT INTO user_academic_records VALUES (3, 103, 'Online Institute', 'Certificate', 'ProjectManagement', '2021-03-01', '2021-09-30', 4.0, 'None', 'AgileMethodologies', 'MsTaylor', 'Virtual', 'Completed', 30, 'PMCommunity', 'None', 0.0, 2021, '2021-10-01 10:00:00', '2021-10-15 11:20:00', 1, 'OnlineLearner', 'https://transcripts.example.com/103.pdf');

-- Content tag suggestions table
CREATE TABLE content_tag_suggestions (
    suggestion_id INTEGER PRIMARY KEY,
    post_id INTEGER,
    suggested_tag TEXT,
    confidence_score REAL,
    model_version TEXT,
    generated_at DATETIME,
    reviewed_by_user_id INTEGER,
    review_status TEXT,
    review_comments TEXT,
    source TEXT,
    language TEXT,
    tag_category TEXT,
    is_active INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    algorithm_name TEXT,
    feature_vector TEXT,
    priority_level INTEGER,
    is_auto_approved INTEGER,
    reviewer_notes TEXT,
    rejection_reason TEXT,
    related_post_ids TEXT,
    metadata_json TEXT,
    processing_time_ms INTEGER,
    system_node_id TEXT
);

INSERT INTO content_tag_suggestions VALUES (1, 5001, 'MachineLearning', 0.92, 'v1.2', '2024-01-15 08:30:00', 12, 'Approved', 'RelevantTag', 'AIModel', 'en', 'Technology', 1, '2024-01-15 08:35:00', '2024-01-15 09:00:00', 'TagGenAlgo', 'vec123', 2, 1, 'AutoApproved', '', '5002,5003', '{"key":"value"}', 120, 'nodeA');
INSERT INTO content_tag_suggestions VALUES (2, 5002, 'DataVisualization', 0.87, 'v1.2', '2024-01-16 10:20:00', 15, 'Pending', '', 'AIModel', 'en', 'Design', 1, '2024-01-16 10:25:00', '2024-01-16 10:25:00', 'TagGenAlgo', 'vec456', 3, 0, '', '', '5001,5004', '{"key":"value2"}', 130, 'nodeB');
INSERT INTO content_tag_suggestions VALUES (3, 5003, 'SQL', 0.95, 'v1.2', '2024-01-17 14:05:00', 18, 'Rejected', 'TooGeneral', 'AIModel', 'en', 'Database', 0, '2024-01-17 14:10:00', '2024-01-17 14:12:00', 'TagGenAlgo', 'vec789', 1, 0, '', 'SpecificityIssue', '5001,5005', '{"key":"value3"}', 110, 'nodeC');

-- External reference catalog table
CREATE TABLE external_reference_catalog (
    reference_id INTEGER PRIMARY KEY,
    reference_type TEXT,
    title TEXT,
    url TEXT,
    author TEXT,
    publication_date DATE,
    publisher TEXT,
    isbn TEXT,
    doi TEXT,
    language TEXT,
    abstract TEXT,
    keywords TEXT,
    citation_count INTEGER,
    related_post_id INTEGER,
    is_peer_reviewed INTEGER,
    access_level TEXT,
    file_size_bytes INTEGER,
    checksum TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    source_system TEXT,
    licensing_info TEXT,
    version TEXT,
    notes TEXT,
    relevance_score REAL,
    tags TEXT,
    category TEXT,
    duration_seconds INTEGER,
    format TEXT,
    encoding TEXT,
    digital_object_identifier TEXT
);

INSERT INTO external_reference_catalog VALUES (1, 'Book', 'Deep Learning', 'https://books.example.com/dl', 'IanGoodfellow', '2016-11-18', 'MITPress', '9780262035613', '', 'en', 'ComprehensiveDeepLearningText', 'AI,NeuralNetworks,DeepLearning', 3421, 6001, 1, 'OpenAccess', 5242880, 'abc123def', '2024-02-01 09:00:00', '2024-02-02 10:15:00', 'LibrarySystem', 'CCBY4.0', '2ndEdition', '', 0.98, 'AI,ML', 'Education', 0, 'PDF', 'UTF8', '');
INSERT INTO external_reference_catalog VALUES (2, 'Article', 'Quantum Computing Overview', 'https://journals.example.com/qc', 'AliceQuantum', '2022-05-05', 'ScienceJournal', '', '10.1000/qc2022', 'en', 'SurveyOfQuantumComputing', 'Quantum,Computing,Physics', 215, 6002, 1, 'Subscription', 1048576, 'def456ghi', '2024-02-03 11:20:00', '2024-02-04 12:30:00', 'JournalRepo', 'StandardLicense', 'v1', '', 0.85, 'Quantum,Physics', 'Research', 0, 'HTML', 'UTF8', '10.1000/qc2022');
INSERT INTO external_reference_catalog VALUES (3, 'Video', 'Introduction to SQL', 'https://videos.example.com/sqlintro', 'BobTrainer', '2020-08-15', 'EduPlatform', '', '', 'en', 'BasicSQLTutorial', 'SQL,Database,Query', 0, 6003, 0, 'Public', 20971520, 'ghi789jkl', '2024-02-05 14:45:00', '2024-02-06 15:55:00', 'VideoHub', 'CreativeCommons', 'v3', '', 0.73, 'SQL,Education', 'Tutorial', 1800, 'MP4', 'H264', '');

-- Device telemetry summary table
CREATE TABLE device_telemetry_summary (
    summary_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    summary_date DATE,
    avg_cpu_usage REAL,
    max_cpu_usage REAL,
    min_cpu_usage REAL,
    avg_memory_usage REAL,
    max_memory_usage REAL,
    min_memory_usage REAL,
    avg_disk_io REAL,
    max_disk_io REAL,
    min_disk_io REAL,
    network_in_mb REAL,
    network_out_mb REAL,
    error_count INTEGER,
    warning_count INTEGER,
    reboot_count INTEGER,
    firmware_version TEXT,
    location TEXT,
    last_heartbeat DATETIME,
    created_at DATETIME,
    updated_at DATETIME,
    health_status TEXT,
    uptime_hours REAL,
    battery_level REAL,
    signal_strength_dbm REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    power_consumption_watts REAL,
    maintenance_due_date DATE,
    is_active INTEGER
);

INSERT INTO device_telemetry_summary VALUES (1, 2001, '2024-03-01', 35.2, 78.5, 12.3, 62.1, 90.0, 40.5, 15.0, 30.0, 5.0, 120.5, 85.3, 0, 2, 0, 'v3.1.4', 'DataCenterA', '2024-03-01 23:55:00', '2024-03-01 00:00:00', '2024-03-01 23:55:00', 'Healthy', 720.5, 98.0, -65.0, 45.0, 30.0, 350.0, '2024-09-01', 1);
INSERT INTO device_telemetry_summary VALUES (2, 2002, '2024-03-01', 55.0, 92.0, 20.0, 70.2, 95.0, 45.0, 22.5, 45.0, 10.0, 200.0, 150.0, 1, 3, 1, 'v2.9.8', 'BranchOfficeB', '2024-03-01 23:58:00', '2024-03-01 00:05:00', '2024-03-01 23:58:00', 'Degraded', 680.0, 85.0, -70.0, 50.0, 35.0, 420.0, '2024-08-15', 1);
INSERT INTO device_telemetry_summary VALUES (3, 2003, '2024-03-01', 20.5, 60.0, 10.0, 40.0, 65.0, 30.0, 8.0, 18.0, 2.0, 80.0, 60.0, 0, 0, 0, 'v4.0.0', 'RemoteSiteC', '2024-03-01 23:50:00', '2024-03-01 00:10:00', '2024-03-01 23:50:00', 'Healthy', 740.0, 100.0, -60.0, 40.0, 25.0, 300.0, '2024-10-01', 1);

-- Knowledge graph inference log table
CREATE TABLE knowledge_graph_inference_log (
    inference_id INTEGER PRIMARY KEY,
    graph_id INTEGER,
    inference_type TEXT,
    source_node_id INTEGER,
    target_node_id INTEGER,
    confidence REAL,
    inference_timestamp DATETIME,
    model_version TEXT,
    runtime_ms INTEGER,
    input_features TEXT,
    output_prediction TEXT,
    is_verified INTEGER,
    verifier_user_id INTEGER,
    verification_timestamp DATETIME,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    algorithm_name TEXT,
    feature_vector_hash TEXT,
    inference_status TEXT,
    related_inference_ids TEXT,
    parameters_json TEXT,
    error_message TEXT,
    execution_node TEXT,
    priority_level INTEGER,
    batch_id INTEGER,
    latency_ms INTEGER,
    is_active INTEGER,
    retrain_flag INTEGER,
    audit_log_id INTEGER,
    system_env TEXT,
    resource_usage REAL
);

INSERT INTO knowledge_graph_inference_log VALUES (1, 301, 'link_prediction', 1501, 2502, 0.93, '2024-03-05 10:15:00', 'kg_v2.0', 85, 'featA,featB', 'Link', 1, 45, '2024-03-05 11:00:00', 'VerifiedByExpert', '2024-03-05 10:20:00', '2024-03-05 10:25:00', 'GraphAlgo', 'hash123', 'Success', '2,3', '{"param1":5}', '', 'nodeX', 1, 1001, 90, 1, 0, 5001, 'prod', 0.75);
INSERT INTO knowledge_graph_inference_log VALUES (2, 301, 'node_classification', 1600, NULL, 0.88, '2024-03-06 14:30:00', 'kg_v2.0', 110, 'featC,featD', 'ClassA', 0, NULL, NULL, 'PendingReview', '2024-03-06 14:35:00', '2024-03-06 14:40:00', 'GraphAlgo', 'hash456', 'Pending', '', '{"param2":10}', 'TimeoutError', 'nodeY', 2, 1002, 115, 1, 0, 5002, 'staging', 0.60);
INSERT INTO knowledge_graph_inference_log VALUES (3, 302, 'relationship_extraction', 1705, 2708, 0.97, '2024-03-07 09:05:00', 'kg_v2.1', 70, 'featE,featF', 'Related', 1, 52, '2024-03-07 09:45:00', 'ReviewedAndAccepted', '2024-03-07 09:10:00', '2024-03-07 09:12:00', 'GraphAlgo', 'hash789', 'Success', '4', '{"param3":"value"}', '', 'nodeZ', 1, 1003, 75, 1, 1, 5003, 'prod', 0.82);

-- Sponsor contribution details table
CREATE TABLE sponsor_contribution_details (
    contribution_id INTEGER PRIMARY KEY,
    sponsor_id INTEGER,
    sponsor_name TEXT,
    campaign_name TEXT,
    contribution_amount REAL,
    contribution_currency TEXT,
    contribution_date DATE,
    contribution_type TEXT,
    acknowledgement_sent INTEGER,
    acknowledgement_date DATE,
    tax_receipt_number TEXT,
    tax_receipt_issued INTEGER,
    tax_receipt_date DATE,
    payment_method TEXT,
    transaction_id TEXT,
    purpose TEXT,
    target_event_id INTEGER,
    target_project_id INTEGER,
    is_recurring INTEGER,
    recurrence_interval TEXT,
    next_scheduled_date DATE,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    approved_by_user_id INTEGER,
    approval_timestamp DATETIME,
    status TEXT,
    external_reference_id INTEGER,
    compliance_checked INTEGER,
    compliance_notes TEXT,
    audit_log_id INTEGER,
    region TEXT,
    sector TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    marketing_opt_in INTEGER
);

INSERT INTO sponsor_contribution_details VALUES (1, 4001, 'TechCorp', 'AI Innovation Fund', 250000.0, 'USD', '2024-01-15', 'Cash', 1, '2024-01-20', 'TRN1001', 1, '2024-01-21', 'BankTransfer', 'TXN78901', 'ResearchSupport', 501, 601, 0, NULL, NULL, '2024-01-10 09:00:00', '2024-01-10 09:05:00', 'FirstYearContribution', 12, '2024-01-10 09:10:00', 'Approved', 9001, 1, 'AllDocsComplete', 3001, 'NorthAmerica', 'Technology', 'contact@techcorp.com', '5551234567', '123 Tech Way', '', 'Silicon Valley', 'CA', '94025', 'USA', 1);
INSERT INTO sponsor_contribution_details VALUES (2, 4002, 'GreenEnergy', 'Solar Initiative', 150000.0, 'USD', '2024-02-05', 'InKind', 0, NULL, 'TRN1002', 0, NULL, 'Check', 'TXN78902', 'EquipmentDonation', 502, 602, 1, 'Monthly', '2024-03-01', '2024-02-01 10:15:00', '2024-02-01 10:20:00', 'PendingReceipt', 13, '2024-02-01 10:30:00', 'Pending', 9002, 0, 'AwaitingDocs', 3002, 'Europe', 'Energy', 'info@greenenergy.eu', '442071234567', '45 Green Street', 'Suite 5', 'London', '', 'SW1A1AA', 'UK', 0);
INSERT INTO sponsor_contribution_details VALUES (3, 4003, 'HealthPlus', 'Wellness Program', 50000.0, 'EUR', '2024-03-10', 'Cash', 1, '2024-03-12', 'TRN1003', 1, '2024-03-13', 'CreditCard', 'TXN78903', 'CommunityHealth', 503, 603, 0, NULL, NULL, '2024-03-05 14:00:00', '2024-03-05 14:05:00', 'Completed', 14, '2024-03-05 14:10:00', 'Completed', 9003, 1, 'AllGood', 3003, 'Asia', 'Healthcare', 'support@healthplus.asia', '8131234567', '78 Health Ave', '', 'Tokyo', '', '100-0001', 'Japan', 1);

-- Marketplace transaction logs table
CREATE TABLE marketplace_transaction_logs (
    transaction_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    buyer_user_id INTEGER,
    seller_user_id INTEGER,
    product_id INTEGER,
    product_name TEXT,
    quantity INTEGER,
    unit_price REAL,
    total_amount REAL,
    currency TEXT,
    transaction_date DATETIME,
    payment_method TEXT,
    payment_status TEXT,
    shipping_address_line1 TEXT,
    shipping_address_line2 TEXT,
    shipping_city TEXT,
    shipping_state TEXT,
    shipping_zip TEXT,
    shipping_country TEXT,
    shipping_method TEXT,
    shipping_cost REAL,
    tax_amount REAL,
    discount_amount REAL,
    coupon_code TEXT,
    order_status TEXT,
    fulfillment_status TEXT,
    tracking_number TEXT,
    carrier TEXT,
    estimated_delivery_date DATE,
    actual_delivery_date DATE,
    return_requested INTEGER,
    return_reason TEXT,
    refund_amount REAL,
    refund_status TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    is_gift INTEGER,
    gift_message TEXT,
    buyer_ip_address TEXT,
    device_type TEXT,
    browser TEXT,
    referral_source TEXT,
    affiliate_id INTEGER,
    commission_amount REAL,
    commission_currency TEXT,
    fraud_check_passed INTEGER,
    fraud_score REAL,
    chargeback_flag INTEGER
);

INSERT INTO marketplace_transaction_logs VALUES (10001, 20001, 101, 202, 301, 'WirelessMouse', 2, 25.99, 51.98, 'USD', '2024-04-01 12:30:00', 'CreditCard', 'Completed', '123 Main St', 'Apt 4B', 'Metropolis', 'CA', '90001', 'USA', 'Standard', 5.0, 4.5, 0.0, '', 'Shipped', 'InTransit', 'TRK123456', 'UPS', '2024-04-07', NULL, 0, '', 0.0, 'N/A', '2024-04-01 12:35:00', '2024-04-02 08:10:00', 'FirstOrder', 0, '', '192.168.1.10', 'Mobile', 'Chrome', 'AdCampaign1', 301, 5.0, 'USD', 1, 0.1, 0);
INSERT INTO marketplace_transaction_logs VALUES (10002, 20002, 103, 204, 302, 'USB-CAdapter', 1, 15.49, 15.49, 'USD', '2024-04-02 09:15:00', 'PayPal', 'Pending', '456 Oak Ave', '', 'Gotham', 'NY', '10001', 'USA', 'Express', 7.0, 1.2, 2.0, 'SPRING10', 'Processing', 'Pending', '', '', '2024-04-09', NULL, 0, '', 0.0, 'N/A', '2024-04-02 09:20:00', '2024-04-02 09:25:00', 'UrgentOrder', 1, 'HappyBirthday', '203.0.113.45', 'Desktop', 'Firefox', 'OrganicSearch', 302, 0.0, 'USD', 1, 0.05, 0);
INSERT INTO marketplace_transaction_logs VALUES (10003, 20003, 105, 206, 303, 'GamingKeyboard', 1, 79.99, 79.99, 'EUR', '2024-04-03 16:45:00', 'BankTransfer', 'Completed', '789 Pine Rd', 'Floor 2', 'Berlin', '', '10115', 'Germany', 'Standard', 0.0, 6.8, 5.0, 'WINTER5', 'Delivered', 'Delivered', 'TRK987654', 'DHL', '2024-04-10', '2024-04-09', 0, '', 0.0, 'N/A', '2024-04-03 16:50:00', '2024-04-04 10:05:00', 'RepeatCustomer', 0, '', '198.51.100.22', 'Tablet', 'Safari', 'EmailCampaign', 303, 4.0, 'EUR', 1, 0.2, 0);

-- Research project milestones table
CREATE TABLE research_project_milestones (
    milestone_id INTEGER PRIMARY KEY,
    project_id INTEGER,
    milestone_name TEXT,
    description TEXT,
    target_date DATE,
    actual_completion_date DATE,
    status TEXT,
    responsible_user_id INTEGER,
    budget_allocated REAL,
    budget_spent REAL,
    risk_level TEXT,
    dependencies TEXT,
    deliverables TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    is_critical INTEGER,
    progress_percent REAL,
    stakeholder_group TEXT,
    approval_required INTEGER,
    approved_by_user_id INTEGER,
    approval_timestamp DATETIME,
    comments TEXT,
    related_document_id INTEGER,
    change_request_id INTEGER,
    external_funding BOOLEAN,
    funding_source TEXT,
    funding_amount REAL,
    visibility TEXT,
    reporting_frequency TEXT,
    metrics TEXT,
    escalation_contact_id INTEGER,
    audit_log_id INTEGER,
    compliance_checked INTEGER,
    compliance_notes TEXT,
    region TEXT,
    sector TEXT,
    priority_level INTEGER,
    effort_estimate_hours REAL,
    actual_effort_hours REAL,
    is_archived INTEGER,
    archive_date DATE,
    retention_policy TEXT
);

INSERT INTO research_project_milestones VALUES (1, 501, 'Literature Review', 'Complete systematic review of related work', '2024-02-28', '2024-02-27', 'Completed', 45, 10000.0, 9500.0, 'Low', '', 'ReviewReport.pdf', '2024-01-10 08:00:00', '2024-02-28 17:30:00', 0, 100.0, 'AcademicCommittee', 1, 22, '2024-03-01 09:00:00', 'All good', 8001, NULL, 0, NULL, 0.0, 'Public', 'Monthly', 'CitationCount', 31, 4001, 1, 'AllDocsPresent', 'NorthAmerica', 'Research', 1, 200.0, 190.0, 0, NULL, '');
INSERT INTO research_project_milestones VALUES (2, 501, 'Prototype Development', 'Build functional prototype of the system', '2024-06-30', NULL, 'InProgress', 46, 50000.0, 21000.0, 'Medium', 'Literature Review', 'PrototypeDemo.mp4', '2024-02-15 09:30:00', '2024-04-20 14:45:00', 1, 42.0, 'IndustryPartners', 1, 23, '2024-05-01 10:15:00', 'On track', 8002, 9001, 1, 'GovGrant', 25000.0, 'Restricted', 'Quarterly', 'PerformanceMetrics', 32, 4002, 0, '', 'Europe', 'Technology', 2, 800.0, 300.0, 0, NULL, '');
INSERT INTO research_project_milestones VALUES (3, 502, 'Clinical Trial Phase I', 'Initial safety testing on volunteers', '2024-09-15', NULL, 'Planned', 47, 150000.0, 0.0, 'High', 'Prototype Development', 'TrialProtocol.docx', '2024-03-05 11:20:00', '2024-03-05 11:20:00', 1, 0.0, 'MedicalBoard', 1, 24, NULL, 'Awaiting IRB approval', 8003, NULL, 1, 'PharmaPartner', 100000.0, 'Confidential', 'Biannual', 'AdverseEventRate', 33, 4003, 0, '', 'Asia', 'Healthcare', 1, 0.0, 0.0, 0, NULL, '');

-- Environmental monitoring station table
CREATE TABLE environmental_monitoring_station (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT,
    location_description TEXT,
    latitude REAL,
    longitude REAL,
    elevation_meters REAL,
    installation_date DATE,
    last_maintenance_date DATE,
    sensor_type TEXT,
    sensor_model TEXT,
    firmware_version TEXT,
    measurement_interval_seconds INTEGER,
    data_retention_days INTEGER,
    is_active INTEGER,
    owner_organization TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    zip_code TEXT,
    timezone TEXT,
    calibration_status TEXT,
    last_calibration_date DATE,
    calibration_due_date DATE,
    data_quality_score REAL,
    battery_level_percent REAL,
    power_source TEXT,
    solar_panel_capacity_watts REAL,
    wind_turbine_capacity_watts REAL,
    connectivity_type TEXT,
    network_provider TEXT,
    ip_address TEXT,
    mac_address TEXT,
    last_data_timestamp DATETIME,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    is_remote_monitoring_enabled INTEGER,
    remote_monitoring_endpoint TEXT,
    maintenance_contract_id INTEGER,
    compliance_certified INTEGER,
    certification_body TEXT,
    certification_date DATE,
    environmental_zone TEXT,
    protected_area_status TEXT,
    public_access_allowed INTEGER,
    data_sharing_policy TEXT,
    data_access_level TEXT,
    archive_status TEXT,
    archive_date DATE
);

INSERT INTO environmental_monitoring_station VALUES (1, 'NorthHillStation', 'Hilltop overlooking valley', 45.1234, -122.5678, 350.5, '2022-05-10', '2024-03-01', 'Weather', 'WX-2000', 'FW1.4', 300, 365, 1, 'EnviroLabs', 'contact@envirolabs.org', '5559876543', 'Portland', 'OR', 'USA', '97035', 'America/Los_Angeles', 'Calibrated', '2024-02-28', '2024-08-28', 0.95, 88.0, 'Solar', 150.0, 0.0, 'Cellular', 'Verizon', '192.0.2.1', '00:1A:2B:3C:4D:5E', '2024-04-20 15:00:00', '2024-04-01 08:00:00', '2024-04-20 15:05:00', 'Routine operation', 1, 'https://monitor.envirolabs.org/api', 5001, 1, 'EPA', '2023-06-15', 'Mountain', 'Yes', 0, 'OpenData', 'Public', 'Active', NULL);
INSERT INTO environmental_monitoring_station VALUES (2, 'RiverBankStation', 'Near the east bank of River X', 38.5678, -90.1234, 120.0, '2021-09-20', '2024-02-15', 'WaterQuality', 'WQ-500', 'FW2.1', 600, 730, 1, 'WaterWatch', 'info@waterwatch.net', '5551230987', 'St. Louis', 'MO', 'USA', '63101', 'America/Chicago', 'DueCalibration', '2023-12-01', '2024-06-01', 0.88, 76.0, 'Mains', 0.0, 0.0, 'WiFi', 'Comcast', '198.51.100.2', '00:1B:2C:3D:4E:5F', '2024-04-18 09:30:00', '2024-04-01 09:00:00', '2024-04-18 09:35:00', 'Minor sensor drift observed', 0, NULL, 5002, 0, NULL, NULL, 'River', 'No', 1, 'Restricted', 'Private', 'Archived', '2022-12-31');
INSERT INTO environmental_monitoring_station VALUES (3, 'CoastalObservatory', 'Coastal cliff monitoring site', 34.5678, -118.1234, 15.0, '2023-01-15', '2024-03-20', 'AirQuality', 'AQ-300', 'FW3.0', 120, 180, 1, 'AirSense', 'support@airsense.com', '5557778899', 'Santa Monica', 'CA', 'USA', '90401', 'America/Los_Angeles', 'Calibrated', '2024-03-15', '2024-09-15', 0.98, 92.0, 'Hybrid', 200.0, 0.0, 'Satellite', 'SpaceX', '203.0.113.5', '00:1C:2D:3E:4F:5A', '2024-04-19 11:45:00', '2024-04-01 10:00:00', '2024-04-19 11:50:00', 'All systems nominal', 1, 'https://coastal.airsense.org/api', 5003, 1, 'ISO', '2023-11-01', 'Coastal', 'Yes', 0, 'OpenData', 'Public', 'Active', NULL);