-- Table describing eco‑focused initiatives linked to each Grand Prix race
CREATE TABLE race_eco_initiatives (
    ecoInitiativeId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    year INTEGER,
    initiative_name TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    budget REAL,
    carbon_reduction_tons REAL,
    waste_reduction_tons REAL,
    energy_saving_mwh REAL,
    stakeholder TEXT,
    status TEXT,
    approval_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric1 REAL,
    metric2 REAL,
    metric3 REAL,
    metric4 REAL,
    metric5 REAL,
    metric6 REAL
);
INSERT INTO race_eco_initiatives (raceId,year,initiative_name,description,start_date,end_date,budget,carbon_reduction_tons,waste_reduction_tons,energy_saving_mwh,stakeholder,status,approval_date,notes,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO race_eco_initiatives (raceId,year,initiative_name,description,start_date,end_date,budget,carbon_reduction_tons,waste_reduction_tons,energy_saving_mwh,stakeholder,status,approval_date,notes,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO race_eco_initiatives (raceId,year,initiative_name,description,start_date,end_date,budget,carbon_reduction_tons,waste_reduction_tons,energy_saving_mwh,stakeholder,status,approval_date,notes,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table tracking drivers’ long‑term career pathways and milestones
CREATE TABLE driver_career_pathways (
    pathwayId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    start_year INTEGER,
    end_year INTEGER,
    program_name TEXT,
    description TEXT,
    mentor TEXT,
    training_center TEXT,
    certification TEXT,
    scholarship_amount REAL,
    tier TEXT,
    status TEXT,
    graduation_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric_a REAL,
    metric_b REAL,
    metric_c REAL,
    metric_d REAL,
    metric_e REAL,
    metric_f REAL,
    metric_g REAL,
    metric_h REAL
);
INSERT INTO driver_career_pathways (driverId,start_year,end_year,program_name,description,mentor,training_center,certification,scholarship_amount,tier,status,graduation_date,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO driver_career_pathways (driverId,start_year,end_year,program_name,description,mentor,training_center,certification,scholarship_amount,tier,status,graduation_date,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO driver_career_pathways (driverId,start_year,end_year,program_name,description,mentor,training_center,certification,scholarship_amount,tier,status,graduation_date,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table documenting major infrastructure projects at each circuit
CREATE TABLE circuit_infrastructure_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    project_name TEXT,
    description TEXT,
    start_date DATE,
    planned_end_date DATE,
    actual_end_date DATE,
    budget REAL,
    contractor TEXT,
    project_manager TEXT,
    status TEXT,
    priority_level TEXT,
    permits_required TEXT,
    environmental_impact TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    phase_a_completion REAL,
    phase_b_completion REAL,
    phase_c_completion REAL,
    total_progress_percent REAL,
    risk_assessment TEXT,
    compliance_status TEXT,
    funding_source TEXT,
    stakeholder_engagement TEXT
);
INSERT INTO circuit_infrastructure_projects (circuitId,project_name,description,start_date,planned_end_date,actual_end_date,budget,contractor,project_manager,status,priority_level,permits_required,environmental_impact,notes,created_at,updated_at,phase_a_completion,phase_b_completion,phase_c_completion,total_progress_percent,risk_assessment,compliance_status,funding_source,stakeholder_engagement) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO circuit_infrastructure_projects (circuitId,project_name,description,start_date,planned_end_date,actual_end_date,budget,contractor,project_manager,status,priority_level,permits_required,environmental_impact,notes,created_at,updated_at,phase_a_completion,phase_b_completion,phase_c_completion,total_progress_percent,risk_assessment,compliance_status,funding_source,stakeholder_engagement) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO circuit_infrastructure_projects (circuitId,project_name,description,start_date,planned_end_date,actual_end_date,budget,contractor,project_manager,status,priority_level,permits_required,environmental_impact,notes,created_at,updated_at,phase_a_completion,phase_b_completion,phase_c_completion,total_progress_percent,risk_assessment,compliance_status,funding_source,stakeholder_engagement) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table analysing the impact of sponsor activities on brand metrics
CREATE TABLE sponsor_impact_analysis (
    impactId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    raceId INTEGER,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    impressions INTEGER,
    engagements INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    revenue_generated REAL,
    brand_awareness_score REAL,
    sentiment_score REAL,
    audience_reach INTEGER,
    region TEXT,
    media_type TEXT,
    budget REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric_x REAL,
    metric_y REAL,
    metric_z REAL,
    roi REAL,
    cost_per_acquisition REAL,
    engagement_rate REAL
);
INSERT INTO sponsor_impact_analysis (sponsorId,raceId,campaign_name,start_date,end_date,impressions,engagements,click_through_rate,conversion_rate,revenue_generated,brand_awareness_score,sentiment_score,audience_reach,region,media_type,budget,notes,created_at,updated_at,metric_x,metric_y,metric_z,roi,cost_per_acquisition,engagement_rate) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO sponsor_impact_analysis (sponsorId,raceId,campaign_name,start_date,end_date,impressions,engagements,click_through_rate,conversion_rate,revenue_generated,brand_awareness_score,sentiment_score,audience_reach,region,media_type,budget,notes,created_at,updated_at,metric_x,metric_y,metric_z,roi,cost_per_acquisition,engagement_rate) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO sponsor_impact_analysis (sponsorId,raceId,campaign_name,start_date,end_date,impressions,engagements,click_through_rate,conversion_rate,revenue_generated,brand_awareness_score,sentiment_score,audience_reach,region,media_type,budget,notes,created_at,updated_at,metric_x,metric_y,metric_z,roi,cost_per_acquisition,engagement_rate) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table capturing detailed analytics of fan experience interactions
CREATE TABLE fan_experience_analytics (
    analyticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    fan_id TEXT,
    interaction_type TEXT,
    zone TEXT,
    device_id TEXT,
    timestamp DATE,
    duration_seconds INTEGER,
    satisfaction_score INTEGER,
    feedback TEXT,
    latitude REAL,
    longitude REAL,
    app_version TEXT,
    os_type TEXT,
    network_type TEXT,
    data_consumed_mb REAL,
    engagement_level TEXT,
    created_at DATE,
    updated_at DATE,
    metric_alpha REAL,
    metric_beta REAL,
    metric_gamma REAL,
    metric_delta REAL,
    metric_epsilon REAL,
    metric_zeta REAL,
    metric_eta REAL,
    metric_theta REAL
);
INSERT INTO fan_experience_analytics (raceId,fan_id,interaction_type,zone,device_id,timestamp,duration_seconds,satisfaction_score,feedback,latitude,longitude,app_version,os_type,network_type,data_consumed_mb,engagement_level,created_at,updated_at,metric_alpha,metric_beta,metric_gamma,metric_delta,metric_epsilon,metric_zeta,metric_eta,metric_theta) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO fan_experience_analytics (raceId,fan_id,interaction_type,zone,device_id,timestamp,duration_seconds,satisfaction_score,feedback,latitude,longitude,app_version,os_type,network_type,data_consumed_mb,engagement_level,created_at,updated_at,metric_alpha,metric_beta,metric_gamma,metric_delta,metric_epsilon,metric_zeta,metric_eta,metric_theta) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO fan_experience_analytics (raceId,fan_id,interaction_type,zone,device_id,timestamp,duration_seconds,satisfaction_score,feedback,latitude,longitude,app_version,os_type,network_type,data_consumed_mb,engagement_level,created_at,updated_at,metric_alpha,metric_beta,metric_gamma,metric_delta,metric_epsilon,metric_zeta,metric_eta,metric_theta) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table recording credentials and certifications of medical staff members
CREATE TABLE medical_staff_credentials (
    credentialId INTEGER PRIMARY KEY AUTOINCREMENT,
    staffId INTEGER,
    certification_name TEXT,
    issuing_authority TEXT,
    certification_number TEXT,
    issue_date DATE,
    expiry_date DATE,
    credential_type TEXT,
    level TEXT,
    specialty TEXT,
    status TEXT,
    notes TEXT,
    verified_by TEXT,
    verification_date DATE,
    created_at DATE,
    updated_at DATE,
    metric1 REAL,
    metric2 REAL,
    metric3 REAL,
    metric4 REAL,
    metric5 REAL,
    metric6 REAL,
    metric7 REAL,
    metric8 REAL
);
INSERT INTO medical_staff_credentials (staffId,certification_name,issuing_authority,certification_number,issue_date,expiry_date,credential_type,level,specialty,status,notes,verified_by,verification_date,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6,metric7,metric8) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO medical_staff_credentials (staffId,certification_name,issuing_authority,certification_number,issue_date,expiry_date,credential_type,level,specialty,status,notes,verified_by,verification_date,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6,metric7,metric8) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO medical_staff_credentials (staffId,certification_name,issuing_authority,certification_number,issue_date,expiry_date,credential_type,level,specialty,status,notes,verified_by,verification_date,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6,metric7,metric8) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table logging hospitality service requests made during a race event
CREATE TABLE hospitality_service_requests_log (
    requestId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    guest_name TEXT,
    room_number TEXT,
    request_type TEXT,
    description TEXT,
    request_timestamp DATE,
    fulfilled_timestamp DATE,
    status TEXT,
    priority TEXT,
    assigned_staff_id INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric_a REAL,
    metric_b REAL,
    metric_c REAL,
    metric_d REAL,
    metric_e REAL,
    metric_f REAL,
    metric_g REAL,
    metric_h REAL,
    metric_i REAL,
    metric_j REAL
);
INSERT INTO hospitality_service_requests_log (raceId,guest_name,room_number,request_type,description,request_timestamp,fulfilled_timestamp,status,priority,assigned_staff_id,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h,metric_i,metric_j) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO hospitality_service_requests_log (raceId,guest_name,room_number,request_type,description,request_timestamp,fulfilled_timestamp,status,priority,assigned_staff_id,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h,metric_i,metric_j) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO hospitality_service_requests_log (raceId,guest_name,room_number,request_type,description,request_timestamp,fulfilled_timestamp,status,priority,assigned_staff_id,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h,metric_i,metric_j) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table tracking detailed logistics records for fuel shipments related to races
CREATE TABLE logistics_fuel_shipment_records (
    shipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    supplier_id INTEGER,
    departure_port TEXT,
    arrival_port TEXT,
    departure_date DATE,
    arrival_date DATE,
    volume_liters REAL,
    temperature_celsius REAL,
    pressure_bar REAL,
    carrier_name TEXT,
    container_id TEXT,
    seal_number TEXT,
    customs_clearance_status TEXT,
    inspection_passed BOOLEAN,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric1 REAL,
    metric2 REAL,
    metric3 REAL,
    metric4 REAL,
    metric5 REAL,
    metric6 REAL,
    metric7 REAL,
    metric8 REAL,
    metric9 REAL,
    metric10 REAL
);
INSERT INTO logistics_fuel_shipment_records (raceId,supplier_id,departure_port,arrival_port,departure_date,arrival_date,volume_liters,temperature_celsius,pressure_bar,carrier_name,container_id,seal_number,customs_clearance_status,inspection_passed,notes,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6,metric7,metric8,metric9,metric10) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO logistics_fuel_shipment_records (raceId,supplier_id,departure_port,arrival_port,departure_date,arrival_date,volume_liters,temperature_celsius,pressure_bar,carrier_name,container_id,seal_number,customs_clearance_status,inspection_passed,notes,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6,metric7,metric8,metric9,metric10) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO logistics_fuel_shipment_records (raceId,supplier_id,departure_port,arrival_port,departure_date,arrival_date,volume_liters,temperature_celsius,pressure_bar,carrier_name,container_id,seal_number,customs_clearance_status,inspection_passed,notes,created_at,updated_at,metric1,metric2,metric3,metric4,metric5,metric6,metric7,metric8,metric9,metric10) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table describing research collaborations between medical teams and external institutions
CREATE TABLE medical_research_collaborations (
    collaborationId INTEGER PRIMARY KEY AUTOINCREMENT,
    medical_staff_id INTEGER,
    institution_name TEXT,
    project_title TEXT,
    start_date DATE,
    end_date DATE,
    funding_amount REAL,
    role_description TEXT,
    status TEXT,
    contact_person TEXT,
    contact_email TEXT,
    ethical_approval_id TEXT,
    data_sharing_agreement BOOLEAN,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric_alpha REAL,
    metric_beta REAL,
    metric_gamma REAL,
    metric_delta REAL,
    metric_epsilon REAL,
    metric_zeta REAL,
    metric_eta REAL,
    metric_theta REAL,
    metric_iota REAL,
    metric_kappa REAL
);
INSERT INTO medical_research_collaborations (medical_staff_id,institution_name,project_title,start_date,end_date,funding_amount,role_description,status,contact_person,contact_email,ethical_approval_id,data_sharing_agreement,notes,created_at,updated_at,metric_alpha,metric_beta,metric_gamma,metric_delta,metric_epsilon,metric_zeta,metric_eta,metric_theta,metric_iota,metric_kappa) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO medical_research_collaborations (medical_staff_id,institution_name,project_title,start_date,end_date,funding_amount,role_description,status,contact_person,contact_email,ethical_approval_id,data_sharing_agreement,notes,created_at,updated_at,metric_alpha,metric_beta,metric_gamma,metric_delta,metric_epsilon,metric_zeta,metric_eta,metric_theta,metric_iota,metric_kappa) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO medical_research_collaborations (medical_staff_id,institution_name,project_title,start_date,end_date,funding_amount,role_description,status,contact_person,contact_email,ethical_approval_id,data_sharing_agreement,notes,created_at,updated_at,metric_alpha,metric_beta,metric_gamma,metric_delta,metric_epsilon,metric_zeta,metric_eta,metric_theta,metric_iota,metric_kappa) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table summarizing sustainability metrics for each Grand Prix event
CREATE TABLE race_sustainability_metrics (
    metricRecordId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    total_energy_mwh REAL,
    renewable_energy_percent REAL,
    total_waste_tons REAL,
    recycled_waste_percent REAL,
    water_usage_cubic_meters REAL,
    carbon_emissions_tons REAL,
    offset_credits_purchased REAL,
    audience_transport_mode TEXT,
    average_travel_distance_km REAL,
    local_supplier_percent REAL,
    biodegradable_materials_percent REAL,
    fan_engagement_score REAL,
    sponsor_sustainability_score REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    metric_a REAL,
    metric_b REAL,
    metric_c REAL,
    metric_d REAL,
    metric_e REAL,
    metric_f REAL,
    metric_g REAL,
    metric_h REAL,
    metric_i REAL,
    metric_j REAL,
    metric_k REAL
);
INSERT INTO race_sustainability_metrics (raceId,total_energy_mwh,renewable_energy_percent,total_waste_tons,recycled_waste_percent,water_usage_cubic_meters,carbon_emissions_tons,offset_credits_purchased,audience_transport_mode,average_travel_distance_km,local_supplier_percent,biodegradable_materials_percent,fan_engagement_score,sponsor_sustainability_score,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h,metric_i,metric_j,metric_k) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO race_sustainability_metrics (raceId,total_energy_mwh,renewable_energy_percent,total_waste_tons,recycled_waste_percent,water_usage_cubic_meters,carbon_emissions_tons,offset_credits_purchased,audience_transport_mode,average_travel_distance_km,local_supplier_percent,biodegradable_materials_percent,fan_engagement_score,sponsor_sustainability_score,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h,metric_i,metric_j,metric_k) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO race_sustainability_metrics (raceId,total_energy_mwh,renewable_energy_percent,total_waste_tons,recycled_waste_percent,water_usage_cubic_meters,carbon_emissions_tons,offset_credits_purchased,audience_transport_mode,average_travel_distance_km,local_supplier_percent,biodegradable_materials_percent,fan_engagement_score,sponsor_sustainability_score,notes,created_at,updated_at,metric_a,metric_b,metric_c,metric_d,metric_e,metric_f,metric_g,metric_h,metric_i,metric_j,metric_k) VALUES (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);