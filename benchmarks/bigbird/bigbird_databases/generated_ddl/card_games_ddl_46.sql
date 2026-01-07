-- Server maintenance tasks table
CREATE TABLE server_maintenance_tasks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    task_name TEXT,
    description TEXT,
    scheduled_start DATE,
    scheduled_end DATE,
    actual_start DATE,
    actual_end DATE,
    status TEXT,
    priority INTEGER,
    assigned_engineer TEXT,
    engineer_contact TEXT,
    maintenance_window TEXT,
    affected_services TEXT,
    downtime_expected INTEGER,
    downtime_minutes INTEGER,
    rollback_plan TEXT,
    notify_users INTEGER,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    notes TEXT,
    task_type TEXT,
    severity INTEGER
);

INSERT INTO server_maintenance_tasks (task_name, description, scheduled_start, scheduled_end, actual_start, actual_end, status, priority, assigned_engineer, engineer_contact, maintenance_window, affected_services, downtime_expected, downtime_minutes, rollback_plan, notify_users, created_at, updated_at, notes, task_type, severity) VALUES ('DatabaseUpgrade','Upgrade primary DB cluster','2025-03-01','2025-03-01','2025-03-01','2025-03-01','Completed',1,'AliceSmith','alice@example.com','02:00-04:00','db_cluster','1',30,'RestoreBackup','1','2025-02-15 08:00:00','2025-03-01 04:30:00','No issues','Upgrade',5);
INSERT INTO server_maintenance_tasks (task_name, description, scheduled_start, scheduled_end, actual_start, actual_end, status, priority, assigned_engineer, engineer_contact, maintenance_window, affected_services, downtime_expected, downtime_minutes, rollback_plan, notify_users, created_at, updated_at, notes, task_type, severity) VALUES ('CacheFlush','Flush redis cache nodes','2025-04-10','2025-04-10','2025-04-10','2025-04-10','Completed',2,'BobJones','bob@example.com','01:00-01:30','redis_cache','0',0,'None','0','2025-04-01 09:15:00','2025-04-10 01:35:00','All caches cleared','Maintenance',2);
INSERT INTO server_maintenance_tasks (task_name, description, scheduled_start, scheduled_end, actual_start, actual_end, status, priority, assigned_engineer, engineer_contact, maintenance_window, affected_services, downtime_expected, downtime_minutes, rollback_plan, notify_users, created_at, updated_at, notes, task_type, severity) VALUES ('NetworkPatch','Apply security patch to switches','2025-05-20','2025-05-20','2025-05-20','2025-05-20','InProgress',3,'CarolLee','carol@example.com','23:00-02:00','network_core','1',15,'RebootSwitches','1','2025-05-01 10:45:00','2025-05-20 00:30:00','Patch rollout ongoing','Patch',4);

-- API client metadata table
CREATE TABLE api_client_metadata (
    client_id INTEGER PRIMARY KEY AUTOINCREMENT,
    client_name TEXT,
    api_key TEXT,
    contact_email TEXT,
    organization TEXT,
    usage_quota INTEGER,
    quota_remaining INTEGER,
    last_used DATE,
    registration_date DATE,
    status TEXT,
    ip_whitelist TEXT,
    rate_limit INTEGER,
    allowed_endpoints TEXT,
    secret_token TEXT,
    encryption_key TEXT,
    support_level TEXT,
    preferred_language TEXT,
    time_zone TEXT,
    notes TEXT,
    is_active INTEGER,
    tier TEXT,
    callback_url TEXT
);

INSERT INTO api_client_metadata (client_name, api_key, contact_email, organization, usage_quota, quota_remaining, last_used, registration_date, status, ip_whitelist, rate_limit, allowed_endpoints, secret_token, encryption_key, support_level, preferred_language, time_zone, notes, is_active, tier, callback_url) VALUES ('AnalyticsApp','key12345','analytics@example.com','DataCorp',100000,87500,'2025-03-15','2024-12-01','Active','192.168.1.0/24',500,'/metrics,/stats','secret5678','encKeyA','Premium','en','UTC','No issues','1','Gold','https://analytics.example.com/cb');
INSERT INTO api_client_metadata (client_name, api_key, contact_email, organization, usage_quota, quota_remaining, last_used, registration_date, status, ip_whitelist, rate_limit, allowed_endpoints, secret_token, encryption_key, support_level, preferred_language, time_zone, notes, is_active, tier, callback_url) VALUES ('MobileGame','key98765','devteam@example.com','GameStudio',500000,490000,'2025-03-20','2025-01-10','Active','10.0.0.0/16',1000,'/login,/play','secret4321','encKeyB','Standard','es','America/New_York','Beta testing','1','Silver','https://mobilegame.example.com/hook');
INSERT INTO api_client_metadata (client_name, api_key, contact_email, organization, usage_quota, quota_remaining, last_used, registration_date, status, ip_whitelist, rate_limit, allowed_endpoints, secret_token, encryption_key, support_level, preferred_language, time_zone, notes, is_active, tier, callback_url) VALUES ('PartnerPortal','key55555','partner@example.com','PartnerInc',200000,150000,'2025-03-18','2024-11-20','Suspended','172.16.0.0/12',300,'/partner/data','secret9999','encKeyC','Basic','fr','Europe/Paris','Account under review','0','Bronze','https://partner.example.com/callback');

-- Security incident reports table
CREATE TABLE security_incident_reports (
    incident_id INTEGER PRIMARY KEY AUTOINCREMENT,
    incident_type TEXT,
    detected_at TIMESTAMP,
    reported_by TEXT,
    severity INTEGER,
    affected_systems TEXT,
    description TEXT,
    mitigation_steps TEXT,
    status TEXT,
    assigned_analyst TEXT,
    analyst_contact TEXT,
    root_cause TEXT,
    recurrence BOOLEAN,
    sla_target_hours INTEGER,
    resolution_time_hours INTEGER,
    impact_score REAL,
    notification_sent INTEGER,
    follow_up_required INTEGER,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    external_reference TEXT,
    compliance_impacted TEXT
);

INSERT INTO security_incident_reports (incident_type, detected_at, reported_by, severity, affected_systems, description, mitigation_steps, status, assigned_analyst, analyst_contact, root_cause, recurrence, sla_target_hours, resolution_time_hours, impact_score, notification_sent, follow_up_required, notes, created_at, updated_at, external_reference, compliance_impacted) VALUES ('SQLInjection','2025-03-10 09:45:00','IDS','4','web_api','Input validation bypass observed','Sanitize inputs, patch endpoint','Resolved','DanaWhite','dana@example.com','Legacy code','0',48,12,8.5,1,0,'No further action','2025-03-10 10:00:00','2025-03-10 22:00:00','IR-2025-001','PCI');
INSERT INTO security_incident_reports (incident_type, detected_at, reported_by, severity, affected_systems, description, mitigation_steps, status, assigned_analyst, analyst_contact, root_cause, recurrence, sla_target_hours, resolution_time_hours, impact_score, notification_sent, follow_up_required, notes, created_at, updated_at, external_reference, compliance_impacted) VALUES ('DDoS','2025-04-05 14:20:00','NetworkMonitor','3','load_balancer','Traffic spikes exceeding capacity','Activate scrubbing service','Mitigating','EvanStone','evan@example.com','Botnet traffic','1',24,6,6.2,1,1,'Monitoring continues','2025-04-05 14:30:00','2025-04-05 20:45:00','IR-2025-045','None');
INSERT INTO security_incident_reports (incident_type, detected_at, reported_by, severity, affected_systems, description, mitigation_steps, status, assigned_analyst, analyst_contact, root_cause, recurrence, sla_target_hours, resolution_time_hours, impact_score, notification_sent, follow_up_required, notes, created_at, updated_at, external_reference, compliance_impacted) VALUES ('UnauthorizedAccess','2025-05-01 08:10:00','AuditLog','5','admin_panel','Credential reuse detected','Force password reset, MFA enable','Open','FionaGrey','fiona@example.com','Compromised credentials','0',72,0,9.1,0,1,'Awaiting user response','2025-05-01 08:15:00','2025-05-01 08:15:00','IR-2025-078','GDPR');

-- Network topology snapshot table
CREATE TABLE network_topology_snapshot (
    snapshot_id INTEGER PRIMARY KEY AUTOINCREMENT,
    taken_at TIMESTAMP,
    device_count INTEGER,
    router_list TEXT,
    switch_list TEXT,
    firewall_list TEXT,
    vpn_gateways TEXT,
    subnets TEXT,
    vlan_config TEXT,
    ipam_version TEXT,
    topology_version TEXT,
    notes TEXT,
    created_by TEXT,
    audit_status TEXT,
    checksum TEXT,
    data_center TEXT,
    region TEXT,
    total_bandwidth_gbps REAL,
    average_latency_ms REAL,
    max_latency_ms REAL,
    min_latency_ms REAL,
    packet_loss_percent REAL
);

INSERT INTO network_topology_snapshot (taken_at, device_count, router_list, switch_list, firewall_list, vpn_gateways, subnets, vlan_config, ipam_version, topology_version, notes, created_by, audit_status, checksum, data_center, region, total_bandwidth_gbps, average_latency_ms, max_latency_ms, min_latency_ms, packet_loss_percent) VALUES ('2025-03-31 00:00:00',150,'R1,R2,R3','S1,S2,S3,S4','F1','VPN1','10.0.0.0/16,10.1.0.0/16','VLAN10,VLAN20','IPAMv2','TopoV1','Quarterly snapshot','netops','Approved','abc123','DC1','us-east',200.5,2.3,10.0,0.5,0.01);
INSERT INTO network_topology_snapshot (taken_at, device_count, router_list, switch_list, firewall_list, vpn_gateways, subnets, vlan_config, ipam_version, topology_version, notes, created_by, audit_status, checksum, data_center, region, total_bandwidth_gbps, average_latency_ms, max_latency_ms, min_latency_ms, packet_loss_percent) VALUES ('2025-06-30 00:00:00',160,'R1,R2,R3,R4','S1,S2,S3,S4,S5','F1,F2','VPN1,VPN2','10.0.0.0/16,10.2.0.0/16','VLAN10,VLAN30','IPAMv3','TopoV2','Midyear snapshot','netops','Pending','def456','DC2','eu-west',250.0,3.1,12.5,0.8,0.02);
INSERT INTO network_topology_snapshot (taken_at, device_count, router_list, switch_list, firewall_list, vpn_gateways, subnets, vlan_config, ipam_version, topology_version, notes, created_by, audit_status, checksum, data_center, region, total_bandwidth_gbps, average_latency_ms, max_latency_ms, min_latency_ms, packet_loss_percent) VALUES ('2025-09-30 00:00:00',170,'R1,R2,R3,R4,R5','S1,S2,S3,S4,S5,S6','F1,F2','VPN1,VPN2,VPN3','10.0.0.0/16,10.3.0.0/16','VLAN10,VLAN40','IPAMv3','TopoV3','Quarterly snapshot Q3','netops','Approved','ghi789','DC3','ap-south',300.2,2.8,9.8,0.6,0.015);

-- Data center power metrics table
CREATE TABLE data_center_power_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    data_center TEXT,
    recorded_at TIMESTAMP,
    total_power_kw REAL,
    it_load_kw REAL,
    cooling_load_kw REAL,
    pue REAL,
    dcir REAL,
    renewable_percent REAL,
    power_outage BOOLEAN,
    outage_duration_minutes INTEGER,
    backup_generator_status TEXT,
    ups_utilization_percent REAL,
    voltage_avg REAL,
    current_avg REAL,
    frequency_hz REAL,
    temperature_c REAL,
    humidity_percent REAL,
    notes TEXT,
    created_by TEXT,
    audit_flag INTEGER,
    compliance_standard TEXT,
    incident_id INTEGER
);

INSERT INTO data_center_power_metrics (data_center, recorded_at, total_power_kw, it_load_kw, cooling_load_kw, pue, dcir, renewable_percent, power_outage, outage_duration_minutes, backup_generator_status, ups_utilization_percent, voltage_avg, current_avg, frequency_hz, temperature_c, humidity_percent, notes, created_by, audit_flag, compliance_standard, incident_id) VALUES ('DC1','2025-03-15 12:00:00',1200.5,800.2,400.3,1.50,0.65,30.0,0,0,'Online',75.2,230.5,350.0,50.0,22.5,45.0,'Normal operation','ops','0','ISO50001',NULL);
INSERT INTO data_center_power_metrics (data_center, recorded_at, total_power_kw, it_load_kw, cooling_load_kw, pue, dcir, renewable_percent, power_outage, outage_duration_minutes, backup_generator_status, ups_utilization_percent, voltage_avg, current_avg, frequency_hz, temperature_c, humidity_percent, notes, created_by, audit_flag, compliance_standard, incident_id) VALUES ('DC2','2025-04-01 03:00:00',1500.0,950.0,550.0,1.58,0.63,25.0,1,45,'GeneratorRunning',80.0,228.0,400.0,49.8,24.0,50.0,'Brief outage due to storm','ops','1','ISO14001',202);
INSERT INTO data_center_power_metrics (data_center, recorded_at, total_power_kw, it_load_kw, cooling_load_kw, pue, dcir, renewable_percent, power_outage, outage_duration_minutes, backup_generator_status, ups_utilization_percent, voltage_avg, current_avg, frequency_hz, temperature_c, humidity_percent, notes, created_by, audit_flag, compliance_standard, incident_id) VALUES ('DC3','2025-05-20 18:30:00',1100.8,720.5,380.3,1.53,0.66,40.0,0,0,'Online',70.5,231.0,300.0,50.2,21.5,42.0,'Power stable after upgrade','ops','0','ISO50001',NULL);

-- User experience survey responses table
CREATE TABLE user_experience_survey_responses (
    response_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    survey_date DATE,
    overall_satisfaction INTEGER,
    ui_clarity INTEGER,
    performance_rating INTEGER,
    feature_completeness INTEGER,
    support_quality INTEGER,
    likelihood_to_recommend INTEGER,
    open_feedback TEXT,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    network_type TEXT,
    session_length_minutes INTEGER,
    errors_encountered INTEGER,
    crash_occurred INTEGER,
    location_region TEXT,
    language_preference TEXT,
    consent_to_contact INTEGER,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    survey_version TEXT,
    respondent_role TEXT,
    referral_source TEXT
);

INSERT INTO user_experience_survey_responses (user_id, survey_date, overall_satisfaction, ui_clarity, performance_rating, feature_completeness, support_quality, likelihood_to_recommend, open_feedback, device_type, os_version, app_version, network_type, session_length_minutes, errors_encountered, crash_occurred, location_region, language_preference, consent_to_contact, created_at, updated_at, survey_version, respondent_role, referral_source) VALUES (101,'2025-03-10',8,7,9,8,8,9,'Great experience overall','Mobile','iOS14','1.3.5','WiFi',45,0,0,'NA','en',1,'2025-03-10 09:00:00','2025-03-10 09:05:00','v1','Player','Friend');
INSERT INTO user_experience_survey_responses (user_id, survey_date, overall_satisfaction, ui_clarity, performance_rating, feature_completeness, support_quality, likelihood_to_recommend, open_feedback, device_type, os_version, app_version, network_type, session_length_minutes, errors_encountered, crash_occurred, location_region, language_preference, consent_to_contact, created_at, updated_at, survey_version, respondent_role, referral_source) VALUES (202,'2025-03-12',6,5,6,5,7,5,'UI could be cleaner','Desktop','Windows10','2.0.1','Ethernet',30,2,1,'EU','de',0,'2025-03-12 14:20:00','2025-03-12 14:22:00','v1','Spectator','SocialMedia');
INSERT INTO user_experience_survey_responses (user_id, survey_date, overall_satisfaction, ui_clarity, performance_rating, feature_completeness, support_quality, likelihood_to_recommend, open_feedback, device_type, os_version, app_version, network_type, session_length_minutes, errors_encountered, crash_occurred, location_region, language_preference, consent_to_contact, created_at, updated_at, survey_version, respondent_role, referral_source) VALUES (303,'2025-03-15',9,9,9,9,9,10,'Excellent, love the new features','Tablet','Android11','3.1.0','4G',60,0,0,'AS','en',1,'2025-03-15 11:45:00','2025-03-15 11:46:00','v1','Player','AdCampaign');

-- Third party service status table
CREATE TABLE third_party_service_status (
    status_id INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name TEXT,
    check_timestamp TIMESTAMP,
    availability_percent REAL,
    avg_response_ms REAL,
    incident_reported BOOLEAN,
    incident_id INTEGER,
    region TEXT,
    maintenance_window TEXT,
    current_version TEXT,
    sla_compliance BOOLEAN,
    error_rate_percent REAL,
    throttling_active BOOLEAN,
    last_outage_timestamp TIMESTAMP,
    notes TEXT,
    created_by TEXT,
    audit_flag INTEGER,
    contact_email TEXT,
    support_url TEXT,
    api_endpoint TEXT,
    response_schema_version TEXT,
    data_retention_days INTEGER,
    cert_expiry_date DATE
);

INSERT INTO third_party_service_status (service_name, check_timestamp, availability_percent, avg_response_ms, incident_reported, incident_id, region, maintenance_window, current_version, sla_compliance, error_rate_percent, throttling_active, last_outage_timestamp, notes, created_by, audit_flag, contact_email, support_url, api_endpoint, response_schema_version, data_retention_days, cert_expiry_date) VALUES ('AuthProvider','2025-03-20 08:00:00',99.8,120.5,0,NULL,'global','02:00-04:00','v2.4','1',0.02,0,NULL,'Stable','ops','0','support@authprovider.com','https://authprovider.com/support','https://api.authprovider.com/v2','v2','30','2025-12-31');
INSERT INTO third_party_service_status (service_name, check_timestamp, availability_percent, avg_response_ms, incident_reported, incident_id, region, maintenance_window, current_version, sla_compliance, error_rate_percent, throttling_active, last_outage_timestamp, notes, created_by, audit_flag, contact_email, support_url, api_endpoint, response_schema_version, data_retention_days, cert_expiry_date) VALUES ('PaymentGateway','2025-03-20 08:05:00',98.5,250.0,1,302,'us-east','03:00-05:00','v1.9','0',0.5,1,'2025-03-19 23:45:00','Outage due to network issue','ops','1','support@paymentgateway.com','https://paymentgateway.com/help','https://api.paymentgateway.com/v1','v1','90','2026-03-15');
INSERT INTO third_party_service_status (service_name, check_timestamp, availability_percent, avg_response_ms, incident_reported, incident_id, region, maintenance_window, current_version, sla_compliance, error_rate_percent, throttling_active, last_outage_timestamp, notes, created_by, audit_flag, contact_email, support_url, api_endpoint, response_schema_version, data_retention_days, cert_expiry_date) VALUES ('AnalyticsAPI','2025-03-20 08:10:00',99.2,80.3,0,NULL,'eu-west','01:00-02:00','v3.2','1',0.01,0,NULL,'All metrics normal','ops','0','support@analyticsapi.com','https://analyticsapi.com/contact','https://api.analyticsapi.com/v3','v3','180','2025-11-20');

-- Feature toggle changes table
CREATE TABLE feature_toggle_changes (
    change_id INTEGER PRIMARY KEY AUTOINCREMENT,
    toggle_name TEXT,
    changed_at TIMESTAMP,
    changed_by TEXT,
    previous_state TEXT,
    new_state TEXT,
    environment TEXT,
    rollout_percentage INTEGER,
    affected_services TEXT,
    description TEXT,
    reason TEXT,
    jira_ticket TEXT,
    approval_status TEXT,
    rollback_possible BOOLEAN,
    rollback_timestamp TIMESTAMP,
    impact_score REAL,
    monitoring_enabled BOOLEAN,
    alert_sent BOOLEAN,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    release_version TEXT,
    change_type TEXT
);

INSERT INTO feature_toggle_changes (toggle_name, changed_at, changed_by, previous_state, new_state, environment, rollout_percentage, affected_services, description, reason, jira_ticket, approval_status, rollback_possible, rollback_timestamp, impact_score, monitoring_enabled, alert_sent, notes, created_at, updated_at, release_version, change_type) VALUES ('NewUI','2025-02-28 10:00:00','alice','off','on','staging',100,'web_app','Enable new user interface','User feedback','FT-123','Approved',1,NULL,7.5,1,0,'Initial rollout','2025-02-28 10:05:00','2025-02-28 10:05:00','v2.0','FeatureEnable');
INSERT INTO feature_toggle_changes (toggle_name, changed_at, changed_by, previous_state, new_state, environment, rollout_percentage, affected_services, description, reason, jira_ticket, approval_status, rollback_possible, rollback_timestamp, impact_score, monitoring_enabled, alert_sent, notes, created_at, updated_at, release_version, change_type) VALUES ('BetaPayments','2025-03-15 14:30:00','bob','off','on','production',10,'payment_service','Test new payment processor','Performance evaluation','FT-456','Pending',1,NULL,5.2,1,0,'Monitoring live traffic','2025-03-15 14:35:00','2025-03-15 14:35:00','v2.1','FeatureEnable');
INSERT INTO feature_toggle_changes (toggle_name, changed_at, changed_by, previous_state, new_state, environment, rollout_percentage, affected_services, description, reason, jira_ticket, approval_status, rollback_possible, rollback_timestamp, impact_score, monitoring_enabled, alert_sent, notes, created_at, updated_at, release_version, change_type) VALUES ('LegacyMode','2025-03-20 09:15:00','carol','on','off','production',0,'api_gateway','Disable legacy compatibility','Security hardening','FT-789','Approved',1,'2025-03-20 10:00:00',8.0,1,1,'Rollback completed','2025-03-20 09:20:00','2025-03-20 10:05:00','v2.2','FeatureDisable');

-- System audit trail table
CREATE TABLE system_audit_trail (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_timestamp TIMESTAMP,
    user_id INTEGER,
    user_name TEXT,
    action_type TEXT,
    object_type TEXT,
    object_id TEXT,
    change_summary TEXT,
    ip_address TEXT,
    user_agent TEXT,
    source_module TEXT,
    outcome TEXT,
    error_code TEXT,
    duration_ms INTEGER,
    previous_value TEXT,
    new_value TEXT,
    related_audit_id INTEGER,
    notes TEXT,
    severity INTEGER,
    compliance_flag INTEGER,
    geo_location TEXT,
    session_id TEXT,
    request_id TEXT,
    audit_version TEXT
);

INSERT INTO system_audit_trail (event_timestamp, user_id, user_name, action_type, object_type, object_id, change_summary, ip_address, user_agent, source_module, outcome, error_code, duration_ms, previous_value, new_value, related_audit_id, notes, severity, compliance_flag, geo_location, session_id, request_id, audit_version) VALUES ('2025-03-10 08:00:00',101,'alice','UPDATE','user_profile','101','Changed email address','192.168.1.10','Chrome','UserService','Success','',120,'alice@example.com','alice_new@example.com',NULL,'','2','0','NA','sess123','req456','v1');
INSERT INTO system_audit_trail (event_timestamp, user_id, user_name, action_type, object_type, object_id, change_summary, ip_address, user_agent, source_module, outcome, error_code, duration_ms, previous_value, new_value, related_audit_id, notes, severity, compliance_flag, geo_location, session_id, request_id, audit_version) VALUES ('2025-03-12 14:30:00',202,'bob','DELETE','api_key','key98765','Revoked key','10.0.0.5','Firefox','APIService','Success','',85,NULL,NULL,NULL,'Key revoked after expiration','1','1','EU','sess789','req101','v1');
INSERT INTO system_audit_trail (event_timestamp, user_id, user_name, action_type, object_type, object_id, change_summary, ip_address, user_agent, source_module, outcome, error_code, duration_ms, previous_value, new_value, related_audit_id, notes, severity, compliance_flag, geo_location, session_id, request_id, audit_version) VALUES ('2025-03-15 09:45:00',303,'carol','INSERT','feature_toggle','NewUI','Enabled feature','172.16.0.2','Edge','ToggleService','Success','',200,NULL,NULL,NULL,'Feature rollout','2','0','APAC','sess345','req678','v1');

-- Compliance checklist items table
CREATE TABLE compliance_checklist_items (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    checklist_name TEXT,
    section TEXT,
    description TEXT,
    control_type TEXT,
    responsible_role TEXT,
    due_date DATE,
    status TEXT,
    last_reviewed DATE,
    reviewer TEXT,
    evidence_location TEXT,
    risk_level TEXT,
    mitigation_plan TEXT,
    comments TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    compliance_framework TEXT,
    applicable_regions TEXT,
    audit_frequency_months INTEGER,
    last_audit_result TEXT,
    remediation_deadline DATE,
    escalation_contact TEXT,
    policy_reference TEXT,
    score INTEGER
);

INSERT INTO compliance_checklist_items (checklist_name, section, description, control_type, responsible_role, due_date, status, last_reviewed, reviewer, evidence_location, risk_level, mitigation_plan, comments, created_at, updated_at, compliance_framework, applicable_regions, audit_frequency_months, last_audit_result, remediation_deadline, escalation_contact, policy_reference, score) VALUES ('DataPrivacy','AccessControl','Ensure role‑based access is enforced','Technical','SecurityAdmin','2025-04-30','Open','2025-03-01','alice','/audit/rca1','High','Implement MFA','Pending review','2025-03-05 09:00:00','2025-03-05 09:00:00','GDPR','EU','12','Pass','2025-06-30','bob','POL‑001','85');
INSERT INTO compliance_checklist_items (checklist_name, section, description, control_type, responsible_role, due_date, status, last_reviewed, reviewer, evidence_location, risk_level, mitigation_plan, comments, created_at, updated_at, compliance_framework, applicable_regions, audit_frequency_months, last_audit_result, remediation_deadline, escalation_contact, policy_reference, score) VALUES ('ITSecurity','Network','Validate firewall rule sets','Procedural','NetOps','2025-05-15','InProgress','2025-03-10','carol','/audit/fw2','Medium','Regular rule review','No issues','2025-03-10 10:30:00','2025-03-12 11:00:00','ISO27001','Global','6','Pass','2025-07-15','dave','POL‑045','90');
INSERT INTO compliance_checklist_items (checklist_name, section, description, control_type, responsible_role, due_date, status, last_reviewed, reviewer, evidence_location, risk_level, mitigation_plan, comments, created_at, updated_at, compliance_framework, applicable_regions, audit_frequency_months, last_audit_result, remediation_deadline, escalation_contact, policy_reference, score) VALUES ('BusinessContinuity','Recovery','Test backup restoration process','Technical','BackupTeam','2025-06-01','Open','2025-02-28','eve','/audit/bkp3','High','Automate restore scripts','Awaiting schedule','2025-02-28 08:45:00','2025-03-02 09:00:00','SOC2','US','12','Fail','2025-08-01','frank','POL‑120','70');