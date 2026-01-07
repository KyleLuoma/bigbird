-- Stadium Repair Projects table
CREATE TABLE Stadium_Repair_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    project_code TEXT,
    start_date TEXT,
    end_date TEXT,
    contractor_name TEXT,
    budget_usd INTEGER,
    actual_spend_usd INTEGER,
    status TEXT,
    priority_level TEXT,
    repair_type TEXT,
    area_sqft INTEGER,
    description TEXT,
    safety_rating INTEGER,
    inspection_date TEXT,
    inspection_passed TEXT,
    environmental_impact_score INTEGER,
    permit_number TEXT,
    project_manager TEXT,
    estimated_duration_days INTEGER,
    actual_duration_days INTEGER,
    notes TEXT
);

INSERT INTO Stadium_Repair_Projects (stadium_id,project_code,start_date,end_date,contractor_name,budget_usd,actual_spend_usd,status,priority_level,repair_type,area_sqft,description,safety_rating,inspection_date,inspection_passed,environmental_impact_score,permit_number,project_manager,estimated_duration_days,actual_duration_days,notes) VALUES (101,'RP2023A','2023-01-15','2023-04-20','Alpha Constructs',2500000,2435000,'Completed','High','Seating','12000','Replace top tier seats',9,'2023-04-18','Yes',85,'PN-5789','Maria Lopez',95,92,'All seats installed on schedule');
INSERT INTO Stadium_Repair_Projects (stadium_id,project_code,start_date,end_date,contractor_name,budget_usd,actual_spend_usd,status,priority_level,repair_type,area_sqft,description,safety_rating,inspection_date,inspection_passed,environmental_impact_score,permit_number,project_manager,estimated_duration_days,actual_duration_days,notes) VALUES (102,'RP2023B','2023-02-01','2023-06-30','Beta Builders',1800000,1902000,'Completed','Medium','Roof','45000','Repair roof leaks',7,'2023-06-28','Yes',78,'PN-6123','Luis Martinez',120,130,'Extended due to weather');
INSERT INTO Stadium_Repair_Projects (stadium_id,project_code,start_date,end_date,contractor_name,budget_usd,actual_spend_usd,status,priority_level,repair_type,area_sqft,description,safety_rating,inspection_date,inspection_passed,environmental_impact_score,permit_number,project_manager,estimated_duration_days,actual_duration_days,notes) VALUES (103,'RP2023C','2023-03-10','2023-09-15','Gamma Renovations',3200000,3150000,'InProgress','Low','Lighting','8000','Upgrade LED lighting system',8,'2023-08-20','Pending',90,'PN-7345','Sofia Patel',180,0,'Phase 1 completed');

-- Club Energy Consumption table
CREATE TABLE Club_Energy_Consumption (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    fiscal_year TEXT,
    total_kwh INTEGER,
    renewable_kwh INTEGER,
    peak_demand_kw INTEGER,
    average_daily_kwh INTEGER,
    electricity_cost_usd INTEGER,
    carbon_emission_tonnes REAL,
    energy_audit_score INTEGER,
    hvac_system_type TEXT,
    lighting_system_type TEXT,
    renewable_source TEXT,
    solar_panel_capacity_kw REAL,
    wind_turbine_capacity_kw REAL,
    energy_saving_initiative TEXT,
    initiative_savings_kwh INTEGER,
    initiative_cost_usd INTEGER,
    notes TEXT,
    last_audit_date TEXT,
    compliance_status TEXT,
    external_certification TEXT,
    verification_agency TEXT,
    verification_date TEXT
);

INSERT INTO Club_Energy_Consumption (club_id,fiscal_year,total_kwh,renewable_kwh,peak_demand_kw,average_daily_kwh,electricity_cost_usd,carbon_emission_tonnes,energy_audit_score,hvac_system_type,lighting_system_type,renewable_source,solar_panel_capacity_kw,wind_turbine_capacity_kw,energy_saving_initiative,initiative_savings_kwh,initiative_cost_usd,notes,last_audit_date,compliance_status,external_certification,verification_agency,verification_date) VALUES (1,'2022','1450000','350000',1250,3972,210000,450.5,88,'VRF','LED','Solar',250.5,0,'LED retrofit',120000,15000,'Completed early','2022-12-01','Compliant','ISO50001','GreenAudit Ltd','2023-01-15');
INSERT INTO Club_Energy_Consumption (club_id,fiscal_year,total_kwh,renewable_kwh,peak_demand_kw,average_daily_kwh,electricity_cost_usd,carbon_emission_tonnes,energy_audit_score,hvac_system_type,lighting_system_type,renewable_source,solar_panel_capacity_kw,wind_turbine_capacity_kw,energy_saving_initiative,initiative_savings_kwh,initiative_cost_usd,notes,last_audit_date,compliance_status,external_certification,verification_agency,verification_date) VALUES (2,'2022','980000','200000',980,2685,145000,305.2,82,'Chiller','Fluorescent','Wind',0,180.3,'Smart thermostats',65000,8000,'Phase 2 ongoing','2022-11-20','Pending','ISO50001','EcoVerify','2023-02-05');
INSERT INTO Club_Energy_Consumption (club_id,fiscal_year,total_kwh,renewable_kwh,peak_demand_kw,average_daily_kwh,electricity_cost_usd,carbon_emission_tonnes,energy_audit_score,hvac_system_type,lighting_system_type,renewable_source,solar_panel_capacity_kw,wind_turbine_capacity_kw,energy_saving_initiative,initiative_savings_kwh,initiative_cost_usd,notes,last_audit_date,compliance_status,external_certification,verification_agency,verification_date) VALUES (3,'2022','1120000','150000',1120,3068,165000,380.0,85,'HeatPump','LED','Solar+Wind',120.0,95.5,'Building insulation',90000,12000,'Inspection scheduled','2022-10-15','Compliant','ISO50001','SustainAudit','2023-01-10');

-- Fan Merchandise Returns table
CREATE TABLE Fan_Merchandise_Returns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER,
    fan_id INTEGER,
    product_sku TEXT,
    product_name TEXT,
    return_date TEXT,
    quantity INTEGER,
    reason_code TEXT,
    reason_detail TEXT,
    refund_amount_usd INTEGER,
    restock_fee_usd INTEGER,
    condition_at_return TEXT,
    processed_by TEXT,
    warehouse_location TEXT,
    original_purchase_date TEXT,
    original_price_usd INTEGER,
    currency TEXT,
    exchange_rate REAL,
    comments TEXT,
    approved BOOLEAN,
    approval_date TEXT,
    handling_time_days INTEGER,
    loss_percentage REAL
);

INSERT INTO Fan_Merchandise_Returns (order_id,fan_id,product_sku,product_name,return_date,quantity,reason_code,reason_detail,refund_amount_usd,restock_fee_usd,condition_at_return,processed_by,warehouse_location,original_purchase_date,original_price_usd,currency,exchange_rate,comments,approved,approval_date,handling_time_days,loss_percentage) VALUES (5001,120045,'TSHIRT001','Home Jersey','2023-05-10',1,'SIZE','Too small',80,5,'New','Ana Gomez','WH-A','2023-03-15',85,'USD',1.0,'Customer requested exchange',1,'2023-05-12',2,5.9);
INSERT INTO Fan_Merchandise_Returns (order_id,fan_id,product_sku,product_name,return_date,quantity,reason_code,reason_detail,refund_amount_usd,restock_fee_usd,condition_at_return,processed_by,warehouse_location,original_purchase_date,original_price_usd,currency,exchange_rate,comments,approved,approval_date,handling_time_days,loss_percentage) VALUES (5002,120078,'CAP002','Team Cap','2023-05-12',2,'DEFECT','Seam ripped',45,10,'Damaged','Carlos Ruiz','WH-B','2023-04-20',55,'USD',1.0,'Return due to manufacturing defect',1,'2023-05-14',2,18.2);
INSERT INTO Fan_Merchandise_Returns (order_id,fan_id,product_sku,product_name,return_date,quantity,reason_code,reason_detail,refund_amount_usd,restock_fee_usd,condition_at_return,processed_by,warehouse_location,original_purchase_date,original_price_usd,currency,exchange_rate,comments,approved,approval_date,handling_time_days,loss_percentage) VALUES (5003,120099,'SCARF003','Winter Scarf','2023-05-15',1,'OTHER','Changed mind',30,0,'New','Laura Chen','WH-C','2023-05-01',30,'USD',1.0,'No further action needed',1,'2023-05-16',1,0.0);

-- Social Media Campaign Analytics table
CREATE TABLE Social_Media_Campaign_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_id TEXT,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    total_impressions INTEGER,
    total_engagements INTEGER,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    video_views INTEGER,
    click_throughs INTEGER,
    ctr REAL,
    cpc_usd REAL,
    spend_usd INTEGER,
    reach INTEGER,
    audience_age_range TEXT,
    audience_gender TEXT,
    geographic_region TEXT,
    sentiment_score REAL,
    top_hashtag TEXT,
    influencer_partners TEXT,
    conversion_rate REAL,
    notes TEXT,
    last_updated TEXT
);

INSERT INTO Social_Media_Campaign_Analytics (campaign_id,platform,start_date,end_date,total_impressions,total_engagements,likes,shares,comments,video_views,click_throughs,ctr,cpc_usd,spend_usd,reach,audience_age_range,audience_gender,geographic_region,sentiment_score,top_hashtag,influencer_partners,conversion_rate,notes,last_updated) VALUES ('CMP001','Twitter','2023-04-01','2023-04-30',2500000,185000,120000,25000,40000,0,5000,0.2,0.12,60000,1500000,'18-35','All','Europe',0.68,'#WinTheMatch','JohnDoe,EmilyStar',0.04,'Strong engagement from male audience', '2023-05-01');
INSERT INTO Social_Media_Campaign_Analytics (campaign_id,platform,start_date,end_date,total_impressions,total_engagements,likes,shares,comments,video_views,click_throughs,ctr,cpc_usd,spend_usd,reach,audience_age_range,audience_gender,geographic_region,sentiment_score,top_hashtag,influencer_partners,conversion_rate,notes,last_updated) VALUES ('CMP002','Instagram','2023-05-01','2023-05-15',1800000,95000,65000,12000,18000,30000,2500,0.14,35000,1200000,'25-44','Female','NorthAmerica',0.73,'#GoalCelebration','SophieLuxe,MarkFit',0.05,'Video content performed well', '2023-05-20');
INSERT INTO Social_Media_Campaign_Analytics (campaign_id,platform,start_date,end_date,total_impressions,total_engagements,likes,shares,comments,video_views,click_throughs,ctr,cpc_usd,spend_usd,reach,audience_age_range,audience_gender,geographic_region,sentiment_score,top_hashtag,influencer_partners,conversion_rate,notes,last_updated) VALUES ('CMP003','Facebook','2023-06-01','2023-06-20',3200000,210000,160000,35000,45000,50000,8000,0.25,0.09,72000,2000000,'18-54','All','Asia',0.65,'#FanPower','LiamStars,AnnaBuzz',0.03,'Higher conversion observed on mobile', '2023-06-25');

-- Equipment Procurement Orders table
CREATE TABLE Equipment_Procurement_Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_number TEXT,
    supplier_name TEXT,
    order_date TEXT,
    expected_delivery_date TEXT,
    received_date TEXT,
    total_items INTEGER,
    total_cost_usd INTEGER,
    currency TEXT,
    exchange_rate REAL,
    payment_status TEXT,
    procurement_category TEXT,
    priority_level TEXT,
    approved_by TEXT,
    approver_role TEXT,
    shipping_method TEXT,
    freight_cost_usd INTEGER,
    insurance_cost_usd INTEGER,
    duty_tax_usd INTEGER,
    warranty_years INTEGER,
    maintenance_contract TEXT,
    equipment_type TEXT,
    model_number TEXT,
    serial_number_range TEXT,
    notes TEXT,
    last_modified TEXT
);

INSERT INTO Equipment_Procurement_Orders (order_number,supplier_name,order_date,expected_delivery_date,received_date,total_items,total_cost_usd,currency,exchange_rate,payment_status,procurement_category,priority_level,approved_by,approver_role,shipping_method,freight_cost_usd,insurance_cost_usd,duty_tax_usd,warranty_years,maintenance_contract,equipment_type,model_number,serial_number_range,notes,last_modified) VALUES ('PO-1001','SportGear Inc','2023-03-10','2023-03-20','2023-03-19',150,75000,'USD',1.0,'Paid','Training','High','Laura Gomez','Facilities Manager','Air',500,200,150,3,'Full Service','Dumbbells','DG-500','SN1000-SN1150','Delivered ahead of schedule','2023-03-20');
INSERT INTO Equipment_Procurement_Orders (order_number,supplier_name,order_date,expected_delivery_date,received_date,total_items,total_cost_usd,currency,exchange_rate,payment_status,procurement_category,priority_level,approved_by,approver_role,shipping_method,freight_cost_usd,insurance_cost_usd,duty_tax_usd,warranty_years,maintenance_contract,equipment_type,model_number,serial_number_range,notes,last_modified) VALUES ('PO-1002','TechVision LLC','2023-04-05','2023-04-15',NULL,80,124000,'USD',1.0,'Pending','Analytics','Medium','Carlos Ruiz','IT Director','Sea',1200,0,300,2,'Limited','Video Cameras','VC-200','SN2000-SN2080','Awaiting customs clearance','2023-04-10');
INSERT INTO Equipment_Procurement_Orders (order_number,supplier_name,order_date,expected_delivery_date,received_date,total_items,total_cost_usd,currency,exchange_rate,payment_status,procurement_category,priority_level,approved_by,approver_role,shipping_method,freight_cost_usd,insurance_cost_usd,duty_tax_usd,warranty_years,maintenance_contract,equipment_type,model_number,serial_number_range,notes,last_modified) VALUES ('PO-1003','GreenEnergy Solutions','2023-05-01','2023-05-20','2023-05-18',30,95000,'USD',1.0,'Paid','Sustainability','Low','Sofia Patel','Operations Manager','Land',800,150,200,5,'Full','Solar Panels','SP-100','SN3000-SN3030','Installation scheduled for June','2023-05-19');

-- Training Camp Sponsorships table
CREATE TABLE Training_Camp_Sponsorships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_id INTEGER,
    sponsor_id INTEGER,
    sponsorship_type TEXT,
    start_date TEXT,
    end_date TEXT,
    amount_usd INTEGER,
    branding_opportunities TEXT,
    logo_placement TEXT,
    media_mentions INTEGER,
    exclusive_rights BOOLEAN,
    activation_events INTEGER,
    product_samples INTEGER,
    hospitality_packages INTEGER,
    agreed_terms TEXT,
    contract_signed BOOLEAN,
    contract_date TEXT,
    renewal_option BOOLEAN,
    renewal_notice_days INTEGER,
    performance_bonus_usd INTEGER,
    notes TEXT,
    last_review_date TEXT,
    status TEXT,
    created_by TEXT,
    created_at TEXT
);

INSERT INTO Training_Camp_Sponsorships (camp_id,sponsor_id,sponsorship_type,start_date,end_date,amount_usd,branding_opportunities,logo_placement,media_mentions,exclusive_rights,activation_events,product_samples, hospitality_packages,agreed_terms,contract_signed,contract_date,renewal_option,renewal_notice_days,performance_bonus_usd,notes,last_review_date,status,created_by,created_at) VALUES (301,4001,'Title','2023-07-01','2023-07-15',85000,'Main banner','Stadium wall','12','1',3,200,2,'Annual agreement',1,'2023-06-15',1,30,15000,'First year performance exceeding targets','2023-08-01','Active','Ana Gomez','2023-06-10');
INSERT INTO Training_Camp_Sponsorships (camp_id,sponsor_id,sponsorship_type,start_date,end_date,amount_usd,branding_opportunities,logo_placement,media_mentions,exclusive_rights,activation_events,product_samples, hospitality_packages,agreed_terms,contract_signed,contract_date,renewal_option,renewal_notice_days,performance_bonus_usd,notes,last_review_date,status,created_by,created_at) VALUES (302,4002,'Supporting','2023-08-05','2023-08-20',45000,'Gym signage','Equipment','8','0',1,100,1,'One‑year term',1,'2023-07-20',0,0,0,'Renewal not planned','2023-09-01','Completed','Carlos Ruiz','2023-07-15');
INSERT INTO Training_Camp_Sponsorships (camp_id,sponsor_id,sponsorship_type,start_date,end_date,amount_usd,branding_opportunities,logo_placement,media_mentions,exclusive_rights,activation_events,product_samples, hospitality_packages,agreed_terms,contract_signed,contract_date,renewal_option,renewal_notice_days,performance_bonus_usd,notes,last_review_date,status,created_by,created_at) VALUES (303,4003,'Equipment','2023-09-10','2023-09-25',30000,'Equipment branding','Gear','5','0',2,150,0,'Short-term deal','1','2023-08-30',0,0,0,'Equipment provided for 2 weeks','2023-10-01','Active','Laura Chen','2023-08-25');

-- Media Streaming Partners table
CREATE TABLE Media_Streaming_Partners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    partner_name TEXT,
    region TEXT,
    platform TEXT,
    contract_start TEXT,
    contract_end TEXT,
    annual_fee_usd INTEGER,
    revenue_share_percent REAL,
    max_simultaneous_streams INTEGER,
    hd_supported BOOLEAN,
    uhd_supported BOOLEAN,
    ad_insertion_capability BOOLEAN,
    analytics_access BOOLEAN,
    dedicated_support_contact TEXT,
    sla_response_time_hours INTEGER,
    contract_renewal_option BOOLEAN,
    renewal_notice_days INTEGER,
    notes TEXT,
    last_audit_date TEXT,
    compliance_status TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT
);

INSERT INTO Media_Streaming_Partners (partner_name,region,platform,contract_start,contract_end,annual_fee_usd,revenue_share_percent,max_simultaneous_streams,hd_supported,uhd_supported,ad_insertion_capability,analytics_access,dedicated_support_contact,sla_response_time_hours,contract_renewal_option,renewal_notice_days,notes,last_audit_date,compliance_status,created_by,created_at,updated_by,updated_at) VALUES ('StreamNow','Europe','LiveStreamX','2022-01-01','2024-12-31',500000,12.5,20000,1,0,1,1,'Miguel Alvarez',4,1,60,'Preferred partner for EU region','2023-11-15','Compliant','Ana Gomez','2022-01-01','Carlos Ruiz','2023-11-20');
INSERT INTO Media_Streaming_Partners (partner_name,region,platform,contract_start,contract_end,annual_fee_usd,revenue_share_percent,max_simultaneous_streams,hd_supported,uhd_supported,ad_insertion_capability,analytics_access,dedicated_support_contact,sla_response_time_hours,contract_renewal_option,renewal_notice_days,notes,last_audit_date,compliance_status,created_by,created_at,updated_by,updated_at) VALUES ('GlobalCast','Asia','SportCast','2023-03-01','2025-02-28',350000,10.0,15000,1,1,1,1,'Yuki Tanaka',6,1,45,'Includes UHD for major events','2023-10-10','Compliant','Sofia Patel','2023-03-01','Laura Chen','2023-10-12');
INSERT INTO Media_Streaming_Partners (partner_name,region,platform,contract_start,contract_end,annual_fee_usd,revenue_share_percent,max_simultaneous_streams,hd_supported,uhd_supported,ad_insertion_capability,analytics_access,dedicated_support_contact,sla_response_time_hours,contract_renewal_option,renewal_notice_days,notes,last_audit_date,compliance_status,created_by,created_at,updated_by,updated_at) VALUES ('PlayLive','NorthAmerica','MatchStream','2021-06-15','2023-06-14',420000,11.0,18000,1,0,0,1,'James Lee',5,0,0,'Contract ending soon, renewal pending','2023-05-20','Pending','Luis Martinez','2021-06-15','Maria Gomez','2023-05-22');

-- Volunteer Recognition Program table
CREATE TABLE Volunteer_Recognition_Program (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    volunteer_id INTEGER,
    program_year TEXT,
    total_hours INTEGER,
    role TEXT,
    recognition_level TEXT,
    award_name TEXT,
    award_date TEXT,
    certificate_number TEXT,
    sponsor_name TEXT,
    sponsor_contribution_usd INTEGER,
    photo_url TEXT,
    testimonial TEXT,
    approved_by TEXT,
    approval_date TEXT,
    notes TEXT,
    last_updated TEXT,
    status TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    feedback_score REAL,
    renewal_eligible BOOLEAN
);

INSERT INTO Volunteer_Recognition_Program (volunteer_id,program_year,total_hours,role,recognition_level,award_name,award_date,certificate_number,sponsor_name,sponsor_contribution_usd,photo_url,testimonial,approved_by,approval_date,notes,last_updated,status,created_by,created_at,updated_by,updated_at,feedback_score,renewal_eligible) VALUES (12001,'2022',180,'Gate Staff','Gold','Volunteer Star','2022-12-10','CERT-2201','Local Motors','2000','http://example.com/photo1.jpg','Outstanding dedication throughout season','Ana Gomez','2022-12-12','First time recipient','2023-01-02','Active','Carlos Ruiz','2022-11-01','Laura Chen','2022-12-15',4.8,1);
INSERT INTO Volunteer_Recognition_Program (volunteer_id,program_year,total_hours,role,recognition_level,award_name,award_date,certificate_number,sponsor_name,sponsor_contribution_usd,photo_url,testimonial,approved_by,approval_date,notes,last_updated,status,created_by,created_at,updated_by,updated_at,feedback_score,renewal_eligible) VALUES (12045,'2022',95,'Concessions','Silver','Service Excellence','2022-12-05','CERT-2202','FoodCo','1200','http://example.com/photo2.jpg','Friendly and efficient service','Sofia Patel','2022-12-07','Second year volunteering','2023-01-03','Active','Luis Martinez','2022-11-05','Maria Gomez','2022-12-10',4.5,1);
INSERT INTO Volunteer_Recognition_Program (volunteer_id,program_year,total_hours,role,recognition_level,award_name,award_date,certificate_number,sponsor_name,sponsor_contribution_usd,photo_url,testimonial,approved_by,approval_date,notes,last_updated,status,created_by,created_at,updated_by,updated_at,feedback_score,renewal_eligible) VALUES (12078,'2022',40,'Parking Attendant','Bronze','Team Player','2022-12-08','CERT-2203','Parking Solutions','800','http://example.com/photo3.jpg','Reliable and courteous','Ana Gomez','2022-12-09','First year volunteer','2023-01-04','Active','Carlos Ruiz','2022-11-10','Laura Chen','2022-12-12',4.2,1);

-- Ticket Refund Transactions table
CREATE TABLE Ticket_Refund_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    refund_id TEXT,
    order_id INTEGER,
    ticket_type TEXT,
    quantity INTEGER,
    original_price_usd INTEGER,
    refund_amount_usd INTEGER,
    refund_reason TEXT,
    request_date TEXT,
    approval_date TEXT,
    processed_by TEXT,
    payment_method TEXT,
    transaction_fee_usd INTEGER,
    net_refund_usd INTEGER,
    currency TEXT,
    exchange_rate REAL,
    notes TEXT,
    status TEXT,
    last_updated TEXT,
    created_by TEXT,
    created_at TEXT,
    audit_trail TEXT,
    fraud_check_passed BOOLEAN,
    external_reference TEXT,
    settlement_date TEXT
);

INSERT INTO Ticket_Refund_Transactions (refund_id,order_id,ticket_type,quantity,original_price_usd,refund_amount_usd,refund_reason,request_date,approval_date,processed_by,payment_method,transaction_fee_usd,net_refund_usd,currency,exchange_rate,notes,status,last_updated,created_by,created_at,audit_trail,fraud_check_passed,external_reference,settlement_date) VALUES ('RF-9001',7001,'Premium',2,120,240,'Match postponed','2023-04-01','2023-04-02','Ana Gomez','Credit Card',5,235,'USD',1.0,'Refund processed automatically','Completed','2023-04-03','Carlos Ruiz','2023-03-30','TX-9001-2023','1','REF-EXT-001','2023-04-04');
INSERT INTO Ticket_Refund_Transactions (refund_id,order_id,ticket_type,quantity,original_price_usd,refund_amount_usd,refund_reason,request_date,approval_date,processed_by,payment_method,transaction_fee_usd,net_refund_usd,currency,exchange_rate,notes,status,last_updated,created_by,created_at,audit_trail,fraud_check_passed,external_reference,settlement_date) VALUES ('RF-9002',7002,'Standard',4,60,240,'Game cancelled','2023-05-10','2023-05-11','Sofia Patel','PayPal',3,237,'USD',1.0,'Customer notified','Completed','2023-05-12','Luis Martinez','2023-05-08','TX-9002-2023','1','REF-EXT-002','2023-05-13');
INSERT INTO Ticket_Refund_Transactions (refund_id,order_id,ticket_type,quantity,original_price_usd,refund_amount_usd,refund_reason,request_date,approval_date,processed_by,payment_method,transaction_fee_usd,net_refund_usd,currency,exchange_rate,notes,status,last_updated,created_by,created_at,audit_trail,fraud_check_passed,external_reference,settlement_date) VALUES ('RF-9003',7003,'VIP',1,200,200,'Player injury','2023-06-15','2023-06-16','Laura Chen','Bank Transfer',0,200,'USD',1.0,'Refund without fees','Completed','2023-06-17','Maria Gomez','2023-06-12','TX-9003-2023','1','REF-EXT-003','2023-06-18');

-- Club Insurance Policies table
CREATE TABLE Club_Insurance_Policies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    policy_number TEXT,
    insurer_name TEXT,
    coverage_type TEXT,
    effective_date TEXT,
    expiration_date TEXT,
    premium_usd INTEGER,
    deductible_usd INTEGER,
    coverage_limit_usd INTEGER,
    insured_asset TEXT,
    asset_value_usd INTEGER,
    policy_status TEXT,
    renewal_option BOOLEAN,
    renewal_notice_days INTEGER,
    broker_contact TEXT,
    broker_phone TEXT,
    claim_history TEXT,
    last_claim_date TEXT,
    notice_of_change TEXT,
    risk_assessment_score REAL,
    exclusions TEXT,
    additional_warranties TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT
);

INSERT INTO Club_Insurance_Policies (policy_number,insurer_name,coverage_type,effective_date,expiration_date,premium_usd,deductible_usd,coverage_limit_usd,insured_asset,asset_value_usd,policy_status,renewal_option,renewal_notice_days,broker_contact,broker_phone,claim_history,last_claim_date,notice_of_change,risk_assessment_score,exclusions,additional_warranties,notes,created_by,created_at,updated_by,updated_at) VALUES ('INS-001','GlobalCover','Property','2022-01-01','2023-12-31',120000,5000,2000000,'Stadium Complex',1800000,'Active',1,60,'Pedro Diaz','5551234567','2 claims','2022-09-15','Policy amendment 2022','4.2','Flood','Extended Liability','Policy renewed without incident','Ana Gomez','2022-01-01','Carlos Ruiz','2022-12-20');
INSERT INTO Club_Insurance_Policies (policy_number,insurer_name,coverage_type,effective_date,expiration_date,premium_usd,deductible_usd,coverage_limit_usd,insured_asset,asset_value_usd,policy_status,renewal_option,renewal_notice_days,broker_contact,broker_phone,claim_history,last_claim_date,notice_of_change,risk_assessment_score,exclusions,additional_warranties,notes,created_by,created_at,updated_by,updated_at) VALUES ('INS-002','SecureSure','Liability','2023-03-01','2024-02-28',80000,2000,1500000,'Club Operations',1200000,'Active',1,45,'Elena Rossi','5559876543','0 claims',NULL,'No changes','3.8','Personal injury','Event Cancellation','Coverage added for new training facility','Sofia Patel','2023-03-01','Luis Martinez','2023-08-15');
INSERT INTO Club_Insurance_Policies (policy_number,insurer_name,coverage_type,effective_date,expiration_date,premium_usd,deductible_usd,coverage_limit_usd,insured_asset,asset_value_usd,policy_status,renewal_option,renewal_notice_days,broker_contact,broker_phone,claim_history,last_claim_date,notice_of_change,risk_assessment_score,exclusions,additional_warranties,notes,created_by,created_at,updated_by,updated_at) VALUES ('INS-003','SafeGuard','Equipment','2023-06-15','2025-06-14',50000,1000,800000,'Training Gear',600000,'Active',0,0,'Marco Lee','5553210987','1 claim','2024-01-20','Policy review 2024','4.5','Wear and tear','Extended Warranty','Added coverage for new VR training equipment','Laura Chen','2023-06-15','Maria Gomez','2024-01-01');