-- Venue_Energy_Suppliers: information about external energy providers for stadiums
CREATE TABLE Venue_Energy_Suppliers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    supplier_name INTEGER,
    contract_start_date INTEGER,
    contract_end_date INTEGER,
    energy_type INTEGER,
    capacity_mw INTEGER,
    price_per_mwh INTEGER,
    renewable_percentage INTEGER,
    reliability_score INTEGER,
    contact_phone INTEGER,
    contact_email INTEGER,
    vat_number INTEGER,
    bank_account INTEGER,
    contract_terms INTEGER,
    notice_period_days INTEGER,
    insurance_coverage INTEGER,
    carbon_offset_tons INTEGER,
    compliance_certified INTEGER,
    last_audit_score INTEGER,
    region_code INTEGER,
    notes INTEGER
);
INSERT INTO Venue_Energy_Suppliers (supplier_id,supplier_name,contract_start_date,contract_end_date,energy_type,capacity_mw,price_per_mwh,renewable_percentage,reliability_score,contact_phone,contact_email,vat_number,bank_account,contract_terms,notice_period_days,insurance_coverage,carbon_offset_tons,compliance_certified,last_audit_score,region_code,notes) VALUES (101,201,20230101,20240101,1,500,60,80,95,1234567890,111222333,987654321,11223344,12,30,500000,200,1,85,10,0);
INSERT INTO Venue_Energy_Suppliers (supplier_id,supplier_name,contract_start_date,contract_end_date,energy_type,capacity_mw,price_per_mwh,renewable_percentage,reliability_score,contact_phone,contact_email,vat_number,bank_account,contract_terms,notice_period_days,insurance_coverage,carbon_offset_tons,compliance_certified,last_audit_score,region_code,notes) VALUES (102,202,20230215,20240215,2,300,55,60,90,2233445566,222333444,123456789,22334455,24,45,400000,150,0,78,11,1);
INSERT INTO Venue_Energy_Suppliers (supplier_id,supplier_name,contract_start_date,contract_end_date,energy_type,capacity_mw,price_per_mwh,renewable_percentage,reliability_score,contact_phone,contact_email,vat_number,bank_account,contract_terms,notice_period_days,insurance_coverage,carbon_offset_tons,compliance_certified,last_audit_score,region_code,notes) VALUES (103,203,20230320,20240320,1,750,62,90,98,3344556677,333444555,234567890,33445566,18,60,600000,250,1,92,12,2);


-- Club_Legal_Documents: tracking of legal paperwork for clubs
CREATE TABLE Club_Legal_Documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    document_id INTEGER,
    club_id INTEGER,
    document_type INTEGER,
    file_number INTEGER,
    issue_date INTEGER,
    expiration_date INTEGER,
    jurisdiction INTEGER,
    status INTEGER,
    signed_by INTEGER,
    reviewed_by INTEGER,
    approval_level INTEGER,
    confidentiality_level INTEGER,
    storage_location INTEGER,
    digital_hash INTEGER,
    version_number INTEGER,
    related_case_id INTEGER,
    legal_fee_amount INTEGER,
    attorney_firm_id INTEGER,
    compliance_flag INTEGER,
    last_modified INTEGER,
    notes INTEGER
);
INSERT INTO Club_Legal_Documents (document_id,club_id,document_type,file_number,issue_date,expiration_date,jurisdiction,status,signed_by,reviewed_by,approval_level,confidentiality_level,storage_location,digital_hash,version_number,related_case_id,legal_fee_amount,attorney_firm_id,compliance_flag,last_modified,notes) VALUES (1001,10,1,555001,20220101,20240101,1,1,2001,3001,2,3,101,987654321,1,0,5000,401,1,20221015,0);
INSERT INTO Club_Legal_Documents (document_id,club_id,document_type,file_number,issue_date,expiration_date,jurisdiction,status,signed_by,reviewed_by,approval_level,confidentiality_level,storage_location,digital_hash,version_number,related_case_id,legal_fee_amount,attorney_firm_id,compliance_flag,last_modified,notes) VALUES (1002,11,2,555002,20220210,20240210,2,2,2002,3002,3,2,102,876543210,2,1,7500,402,0,20221120,1);
INSERT INTO Club_Legal_Documents (document_id,club_id,document_type,file_number,issue_date,expiration_date,jurisdiction,status,signed_by,reviewed_by,approval_level,confidentiality_level,storage_location,digital_hash,version_number,related_case_id,legal_fee_amount,attorney_firm_id,compliance_flag,last_modified,notes) VALUES (1003,12,3,555003,20220315,20240315,1,1,2003,3003,1,1,103,765432109,1,2,6400,403,1,20221205,2);


-- Sponsor_Campaign_Financials: financial tracking of sponsorship campaigns
CREATE TABLE Sponsor_Campaign_Financials (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_id INTEGER,
    sponsor_id INTEGER,
    fiscal_year INTEGER,
    budget_amount INTEGER,
    actual_spend INTEGER,
    revenue_generated INTEGER,
    roi_percentage INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpm INTEGER,
    cpc INTEGER,
    cpa INTEGER,
    target_audience_size INTEGER,
    region_code INTEGER,
    media_mix_score INTEGER,
    activation_count INTEGER,
    bonus_paid INTEGER,
    penalty_incurred INTEGER,
    audit_flag INTEGER,
    last_update INTEGER,
    notes INTEGER
);
INSERT INTO Sponsor_Campaign_Financials (campaign_id,sponsor_id,fiscal_year,budget_amount,actual_spend,revenue_generated,roi_percentage,impressions,clicks,conversions,cpm,cpc,cpa,target_audience_size,region_code,media_mix_score,activation_count,bonus_paid,penalty_incurred,audit_flag,last_update,notes) VALUES (2001,301,2022,1000000,850000,1200000,30,5000000,250000,15000,20,5,10,2000000,1,85,12,50000,0,1,20221201,0);
INSERT INTO Sponsor_Campaign_Financials (campaign_id,sponsor_id,fiscal_year,budget_amount,actual_spend,revenue_generated,roi_percentage,impressions,clicks,conversions,cpm,cpc,cpa,target_audience_size,region_code,media_mix_score,activation_count,bonus_paid,penalty_incurred,audit_flag,last_update,notes) VALUES (2002,302,2023,1500000,1400000,1800000,28,7000000,300000,20000,22,7,12,2500000,2,90,15,60000,5000,0,20230115,1);
INSERT INTO Sponsor_Campaign_Financials (campaign_id,sponsor_id,fiscal_year,budget_amount,actual_spend,revenue_generated,roi_percentage,impressions,clicks,conversions,cpm,cpc,cpa,target_audience_size,region_code,media_mix_score,activation_count,bonus_paid,penalty_incurred,audit_flag,last_update,notes) VALUES (2003,303,2022,800000,750000,950000,20,4000000,180000,12000,18,6,9,1800000,3,80,10,40000,0,1,20221220,2);


-- Broadcast_Equipment_Maintenance_Schedule: schedule for maintenance of broadcast gear
CREATE TABLE Broadcast_Equipment_Maintenance_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id INTEGER,
    equipment_type INTEGER,
    serial_number INTEGER,
    location_code INTEGER,
    last_service_date INTEGER,
    next_service_due INTEGER,
    service_interval_days INTEGER,
    technician_id INTEGER,
    service_provider_id INTEGER,
    maintenance_cost INTEGER,
    downtime_minutes INTEGER,
    warranty_status INTEGER,
    calibration_required INTEGER,
    firmware_version INTEGER,
    last_calibration_date INTEGER,
    next_calibration_due INTEGER,
    parts_replaced_count INTEGER,
    notes INTEGER,
    audit_flag INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    status INTEGER
);
INSERT INTO Broadcast_Equipment_Maintenance_Schedule (equipment_id,equipment_type,serial_number,location_code,last_service_date,next_service_due,service_interval_days,technician_id,service_provider_id,maintenance_cost,downtime_minutes,warranty_status,calibration_required,firmware_version,last_calibration_date,next_calibration_due,parts_replaced_count,notes,audit_flag,created_at,updated_at,status) VALUES (3001,1,900001,10,20221001,20230101,90,501,601,2000,30,1,1,102030,20220915,20221215,2,0,1,20221001,20221010,1);
INSERT INTO Broadcast_Equipment_Maintenance_Schedule (equipment_id,equipment_type,serial_number,location_code,last_service_date,next_service_due,service_interval_days,technician_id,service_provider_id,maintenance_cost,downtime_minutes,warranty_status,calibration_required,firmware_version,last_calibration_date,next_calibration_due,parts_replaced_count,notes,audit_flag,created_at,updated_at,status) VALUES (3002,2,900002,11,20221115,20230215,92,502,602,2500,45,0,1,112131,20221101,20230201,1,1,0,20221115,20221120,1);
INSERT INTO Broadcast_Equipment_Maintenance_Schedule (equipment_id,equipment_type,serial_number,location_code,last_service_date,next_service_due,service_interval_days,technician_id,service_provider_id,maintenance_cost,downtime_minutes,warranty_status,calibration_required,firmware_version,last_calibration_date,next_calibration_due,parts_replaced_count,notes,audit_flag,created_at,updated_at,status) VALUES (3003,3,900003,12,20221205,20230305,90,503,603,1800,20,1,0,122232,20221120,20230220,0,2,1,20221205,20221210,1);


-- Fan_Merchandise_Design_Prototypes: prototype designs for fan merchandise
CREATE TABLE Fan_Merchandise_Design_Prototypes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    prototype_id INTEGER,
    club_id INTEGER,
    merchandise_type INTEGER,
    design_version INTEGER,
    color_scheme INTEGER,
    material_code INTEGER,
    size_range_start INTEGER,
    size_range_end INTEGER,
    estimated_cost INTEGER,
    projected_units INTEGER,
    designer_id INTEGER,
    approval_status INTEGER,
    prototype_status INTEGER,
    created_date INTEGER,
    last_review_date INTEGER,
    feedback_score INTEGER,
    revisions_count INTEGER,
    manufacturing_partner_id INTEGER,
    sustainability_rating INTEGER,
    royalty_fee_percent INTEGER,
    audit_flag INTEGER,
    notes INTEGER,
    status INTEGER,
    uploaded_by INTEGER
);
INSERT INTO Fan_Merchandise_Design_Prototypes (prototype_id,club_id,merchandise_type,design_version,color_scheme,material_code,size_range_start,size_range_end,estimated_cost,projected_units,designer_id,approval_status,prototype_status,created_date,last_review_date,feedback_score,revisions_count,manufacturing_partner_id,sustainability_rating,royalty_fee_percent,audit_flag,notes,status,uploaded_by) VALUES (4001,10,1,1,5,200,38,44,1500,5000,701,1,1,20221001,20221015,85,2,801,90,5,1,0,1,901);
INSERT INTO Fan_Merchandise_Design_Prototypes (prototype_id,club_id,merchandise_type,design_version,color_scheme,material_code,size_range_start,size_range_end,estimated_cost,projected_units,designer_id,approval_status,prototype_status,created_date,last_review_date,feedback_score,revisions_count,manufacturing_partner_id,sustainability_rating,royalty_fee_percent,audit_flag,notes,status,uploaded_by) VALUES (4002,11,2,2,3,210,36,46,1800,6000,702,2,2,20221105,20221120,78,3,802,85,7,0,1,2,902);
INSERT INTO Fan_Merchandise_Design_Prototypes (prototype_id,club_id,merchandise_type,design_version,color_scheme,material_code,size_range_start,size_range_end,estimated_cost,projected_units,designer_id,approval_status,prototype_status,created_date,last_review_date,feedback_score,revisions_count,manufacturing_partner_id,sustainability_rating,royalty_fee_percent,audit_flag,notes,status,uploaded_by) VALUES (4003,12,3,1,7,220,40,48,2000,7000,703,1,3,20221210,20221225,92,1,803,95,6,1,2,3,903);


-- Training_Center_Environmental_Metrics: environmental data for training facilities
CREATE TABLE Training_Center_Environmental_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    metric_date INTEGER,
    temperature_celsius INTEGER,
    humidity_percent INTEGER,
    co2_ppm INTEGER,
    noise_db INTEGER,
    water_usage_liters INTEGER,
    electricity_kwh INTEGER,
    solar_generation_kwh INTEGER,
    wind_generation_kwh INTEGER,
    waste_kg INTEGER,
    recycling_rate_percent INTEGER,
    air_quality_index INTEGER,
    soil_moisture_percent INTEGER,
    light_intensity_lux INTEGER,
    occupancy_percent INTEGER,
    maintenance_events INTEGER,
    energy_efficiency_score INTEGER,
    sustainability_certified INTEGER,
    compliance_issues INTEGER,
    audit_flag INTEGER,
    notes INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    status INTEGER
);
INSERT INTO Training_Center_Environmental_Metrics (center_id,metric_date,temperature_celsius,humidity_percent,co2_ppm,noise_db,water_usage_liters,electricity_kwh,solar_generation_kwh,wind_generation_kwh,waste_kg,recycling_rate_percent,air_quality_index,soil_moisture_percent,light_intensity_lux,occupancy_percent,maintenance_events,energy_efficiency_score,sustainability_certified,compliance_issues,audit_flag,notes,created_at,updated_at,status) VALUES (501,20230101,22,55,420,65,12000,3500,500,0,200,80,42,30,15000,75,2,88,1,0,1,0,20230101,20230102,1);
INSERT INTO Training_Center_Environmental_Metrics (center_id,metric_date,temperature_celsius,humidity_percent,co2_ppm,noise_db,water_usage_liters,electricity_kwh,solar_generation_kwh,wind_generation_kwh,waste_kg,recycling_rate_percent,air_quality_index,soil_moisture_percent,light_intensity_lux,occupancy_percent,maintenance_events,energy_efficiency_score,sustainability_certified,compliance_issues,audit_flag,notes,created_at,updated_at,status) VALUES (502,20230102,21,58,410,60,11500,3400,480,0,190,85,40,32,14800,78,1,90,1,0,1,1,20230102,20230103,1);
INSERT INTO Training_Center_Environmental_Metrics (center_id,metric_date,temperature_celsius,humidity_percent,co2_ppm,noise_db,water_usage_liters,electricity_kwh,solar_generation_kwh,wind_generation_kwh,waste_kg,recycling_rate_percent,air_quality_index,soil_moisture_percent,light_intensity_lux,occupancy_percent,maintenance_events,energy_efficiency_score,sustainability_certified,compliance_issues,audit_flag,notes,created_at,updated_at,status) VALUES (503,20230103,23,53,430,68,12500,3600,520,0,210,78,45,28,15200,72,3,85,0,1,1,2,20230103,20230104,1);


-- League_Partnerships: partnerships between leagues and external entities
CREATE TABLE League_Partnerships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    partner_id INTEGER,
    partnership_type INTEGER,
    start_date INTEGER,
    end_date INTEGER,
    revenue_share_percent INTEGER,
    marketing_budget INTEGER,
    joint_events_count INTEGER,
    exclusive_rights_flag INTEGER,
    sponsor_level INTEGER,
    activation_status INTEGER,
    compliance_audit_flag INTEGER,
    contract_version INTEGER,
    renewal_option_flag INTEGER,
    termination_notice_days INTEGER,
    performance_bonus INTEGER,
    penalty_amount INTEGER,
    created_by INTEGER,
    created_at INTEGER,
    updated_by INTEGER,
    updated_at INTEGER,
    status INTEGER,
    notes INTEGER
);
INSERT INTO League_Partnerships (league_id,partner_id,partnership_type,start_date,end_date,revenue_share_percent,marketing_budget,joint_events_count,exclusive_rights_flag,sponsor_level,activation_status,compliance_audit_flag,contract_version,renewal_option_flag,termination_notice_days,performance_bonus,penalty_amount,created_by,created_at,updated_by,updated_at,status,notes) VALUES (1,301,1,20220101,20231231,15,500000,12,1,3,1,0,2,1,60,20000,5000,401,20220101,402,20221231,1,0);
INSERT INTO League_Partnerships (league_id,partner_id,partnership_type,start_date,end_date,revenue_share_percent,marketing_budget,joint_events_count,exclusive_rights_flag,sponsor_level,activation_status,compliance_audit_flag,contract_version,renewal_option_flag,termination_notice_days,performance_bonus,penalty_amount,created_by,created_at,updated_by,updated_at,status,notes) VALUES (2,302,2,20220315,20240314,10,300000,8,0,2,1,1,1,0,45,15000,3000,403,20220315,404,20230314,1,1);
INSERT INTO League_Partnerships (league_id,partner_id,partnership_type,start_date,end_date,revenue_share_percent,marketing_budget,joint_events_count,exclusive_rights_flag,sponsor_level,activation_status,compliance_audit_flag,contract_version,renewal_option_flag,termination_notice_days,performance_bonus,penalty_amount,created_by,created_at,updated_by,updated_at,status,notes) VALUES (3,303,1,20220501,20240430,12,400000,10,1,4,0,0,3,1,30,18000,4000,405,20220501,406,20230430,0,2);


-- Stadium_Accessibility_Programs: programs to improve stadium accessibility
CREATE TABLE Stadium_Accessibility_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    program_id INTEGER,
    program_name INTEGER,
    start_date INTEGER,
    end_date INTEGER,
    target_audience INTEGER,
    wheelchair_capacity INTEGER,
    hearing_aid_support_flag INTEGER,
    braille_signage_count INTEGER,
    staff_training_hours INTEGER,
    budget_allocated INTEGER,
    external_funding INTEGER,
    compliance_certified INTEGER,
    feedback_score INTEGER,
    incidents_reported INTEGER,
    improvements_made INTEGER,
    partner_organization_id INTEGER,
    audit_flag INTEGER,
    created_by INTEGER,
    created_at INTEGER,
    updated_by INTEGER,
    updated_at INTEGER,
    status INTEGER,
    notes INTEGER,
    evaluation_date INTEGER
);
INSERT INTO Stadium_Accessibility_Programs (stadium_id,program_id,program_name,start_date,end_date,target_audience,wheelchair_capacity,hearing_aid_support_flag,braille_signage_count,staff_training_hours,budget_allocated,external_funding,compliance_certified,feedback_score,incidents_reported,improvements_made,partner_organization_id,audit_flag,created_by,created_at,updated_by,updated_at,status,notes,evaluation_date) VALUES (601,701,1,20220101,20221231,5000,150,1,200,300,250000,50000,1,88,2,15,801,1,901,20220101,902,20221231,1,0,20221231);
INSERT INTO Stadium_Accessibility_Programs (stadium_id,program_id,program_name,start_date,end_date,target_audience,wheelchair_capacity,hearing_aid_support_flag,braille_signage_count,staff_training_hours,budget_allocated,external_funding,compliance_certified,feedback_score,incidents_reported,improvements_made,partner_organization_id,audit_flag,created_by,created_at,updated_by,updated_at,status,notes,evaluation_date) VALUES (602,702,2,20220301,20230301,6000,180,0,250,350,300000,60000,1,90,1,20,802,0,903,20220301,904,20230301,1,1,20230301);
INSERT INTO Stadium_Accessibility_Programs (stadium_id,program_id,program_name,start_date,end_date,target_audience,wheelchair_capacity,hearing_aid_support_flag,braille_signage_count,staff_training_hours,budget_allocated,external_funding,compliance_certified,feedback_score,incidents_reported,improvements_made,partner_organization_id,audit_flag,created_by,created_at,updated_by,updated_at,status,notes,evaluation_date) VALUES (603,703,3,20220515,20230514,5500,160,1,220,320,275000,55000,0,85,3,12,803,1,905,20220515,906,20230514,0,2,20230514);


-- Club_Community_Volunteer_Roles: volunteer positions for club community projects
CREATE TABLE Club_Community_Volunteer_Roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    role_id INTEGER,
    role_name INTEGER,
    required_hours INTEGER,
    training_required_flag INTEGER,
    background_check_flag INTEGER,
    max_volunteers INTEGER,
    skill_level_required INTEGER,
    shift_pattern_code INTEGER,
    compensation_type INTEGER,
    stipend_amount INTEGER,
    equipment_provided_flag INTEGER,
    supervisor_id INTEGER,
    start_date INTEGER,
    end_date INTEGER,
    active_flag INTEGER,
    feedback_score INTEGER,
    attendance_rate_percent INTEGER,
    audit_flag INTEGER,
    created_by INTEGER,
    created_at INTEGER,
    updated_by INTEGER,
    updated_at INTEGER,
    status INTEGER,
    notes INTEGER
);
INSERT INTO Club_Community_Volunteer_Roles (club_id,role_id,role_name,required_hours,training_required_flag,background_check_flag,max_volunteers,skill_level_required,shift_pattern_code,compensation_type,stipend_amount,equipment_provided_flag,supervisor_id,start_date,end_date,active_flag,feedback_score,attendance_rate_percent,audit_flag,created_by,created_at,updated_by,updated_at,status,notes) VALUES (10,801,1,40,1,1,30,2,1,0,0,1,901,20220101,20221231,1,92,95,0,1001,20220101,1002,20221231,1,0);
INSERT INTO Club_Community_Volunteer_Roles (club_id,role_id,role_name,required_hours,training_required_flag,background_check_flag,max_volunteers,skill_level_required,shift_pattern_code,compensation_type,stipend_amount,equipment_provided_flag,supervisor_id,start_date,end_date,active_flag,feedback_score,attendance_rate_percent,audit_flag,created_by,created_at,updated_by,updated_at,status,notes) VALUES (11,802,2,35,0,1,25,1,2,1,200,0,902,20220301,20230228,1,88,90,1,1003,20220301,1004,20230228,1,1);
INSERT INTO Club_Community_Volunteer_Roles (club_id,role_id,role_name,required_hours,training_required_flag,background_check_flag,max_volunteers,skill_level_required,shift_pattern_code,compensation_type,stipend_amount,equipment_provided_flag,supervisor_id,start_date,end_date,active_flag,feedback_score,attendance_rate_percent,audit_flag,created_by,created_at,updated_by,updated_at,status,notes) VALUES (12,803,3,50,1,0,20,3,3,0,0,1,903,20220515,20230514,1,94,97,0,1005,20220515,1006,20230514,1,2);


-- Media_Production_Budget: budgeting details for media production activities
CREATE TABLE Media_Production_Budget (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    production_id INTEGER,
    media_type INTEGER,
    fiscal_year INTEGER,
    allocated_budget INTEGER,
    spent_to_date INTEGER,
    variance_amount INTEGER,
    cost_per_minute INTEGER,
    talent_fees INTEGER,
    equipment_rental INTEGER,
    location_fees INTEGER,
    post_production_costs INTEGER,
    marketing_spend INTEGER,
    contingency_fund INTEGER,
    sponsor_contribution INTEGER,
    revenue_generated INTEGER,
    roi_percentage INTEGER,
    approval_status INTEGER,
    audit_flag INTEGER,
    created_by INTEGER,
    created_at INTEGER,
    updated_by INTEGER,
    updated_at INTEGER,
    status INTEGER,
    notes INTEGER,
    last_review_date INTEGER
);
INSERT INTO Media_Production_Budget (production_id,media_type,fiscal_year,allocated_budget,spent_to_date,variance_amount,cost_per_minute,talent_fees,equipment_rental,location_fees,post_production_costs,marketing_spend,contingency_fund,sponsor_contribution,revenue_generated,roi_percentage,approval_status,audit_flag,created_by,created_at,updated_by,updated_at,status,notes,last_review_date) VALUES (901,1,2022,800000,600000,200000,1200,150000,80000,50000,120000,100000,50000,50000,200000,25,1,0,1101,20220101,1102,20221231,1,0,20221231);
INSERT INTO Media_Production_Budget (production_id,media_type,fiscal_year,allocated_budget,spent_to_date,variance_amount,cost_per_minute,talent_fees,equipment_rental,location_fees,post_production_costs,marketing_spend,contingency_fund,sponsor_contribution,revenue_generated,roi_percentage,approval_status,audit_flag,created_by,created_at,updated_by,updated_at,status,notes,last_review_date) VALUES (902,2,2023,950000,720000,230000,1300,160000,90000,60000,130000,110000,60000,60000,250000,27,2,1,1103,20220301,1104,20230301,1,1,20230301);
INSERT INTO Media_Production_Budget (production_id,media_type,fiscal_year,allocated_budget,spent_to_date,variance_amount,cost_per_minute,talent_fees,equipment_rental,location_fees,post_production_costs,marketing_spend,contingency_fund,sponsor_contribution,revenue_generated,roi_percentage,approval_status,audit_flag,created_by,created_at,updated_by,updated_at,status,notes,last_review_date) VALUES (903,3,2022,700000,550000,150000,1100,140000,75000,45000,115000,95000,45000,45000,180000,24,1,0,1105,20220215,1106,20221215,0,2,20221215);