-- Branch Energy Profile
CREATE TABLE branch_energy_profile (
    profile_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    month INTEGER NOT NULL,
    total_consumption_kwh REAL NOT NULL,
    peak_demand_kw REAL NOT NULL,
    renewable_share_percent REAL NOT NULL,
    heating_consumption_kwh REAL NOT NULL,
    cooling_consumption_kwh REAL NOT NULL,
    lighting_consumption_kwh REAL NOT NULL,
    equipment_consumption_kwh REAL NOT NULL,
    avg_daily_occupancy INTEGER NOT NULL,
    carbon_emission_tons REAL NOT NULL,
    energy_cost_usd REAL NOT NULL,
    utility_provider TEXT NOT NULL,
    meter_id TEXT NOT NULL,
    billing_cycle TEXT NOT NULL,
    meter_reading_start INTEGER NOT NULL,
    meter_reading_end INTEGER NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL
);

INSERT INTO branch_energy_profile (profile_id,branch_id,year,month,total_consumption_kwh,peak_demand_kw,renewable_share_percent,heating_consumption_kwh,cooling_consumption_kwh,lighting_consumption_kwh,equipment_consumption_kwh,avg_daily_occupancy,carbon_emission_tons,energy_cost_usd,utility_provider,meter_id,billing_cycle,meter_reading_start,meter_reading_end,notes,created_at)
VALUES (1,101,2023,1,12500.5,450.2,35.0,3000.0,4000.0,1500.0,2000.0,120,2.8,1500.0,PowerCo,MTR101,Monthly,50000,62500,'Initial record',DATE '2023-02-01');

INSERT INTO branch_energy_profile (profile_id,branch_id,year,month,total_consumption_kwh,peak_demand_kw,renewable_share_percent,heating_consumption_kwh,cooling_consumption_kwh,lighting_consumption_kwh,equipment_consumption_kwh,avg_daily_occupancy,carbon_emission_tons,energy_cost_usd,utility_provider,meter_id,billing_cycle,meter_reading_start,meter_reading_end,notes,created_at)
VALUES (2,102,2023,1,9800.0,380.0,40.0,2500.0,3500.0,1200.0,1600.0,100,2.3,1200.0,EnergyInc,MTR102,Monthly,30000,39800,'Second month',DATE '2023-02-01');

INSERT INTO branch_energy_profile (profile_id,branch_id,year,month,total_consumption_kwh,peak_demand_kw,renewable_share_percent,heating_consumption_kwh,cooling_consumption_kwh,lighting_consumption_kwh,equipment_consumption_kwh,avg_daily_occupancy,carbon_emission_tons,energy_cost_usd,utility_provider,meter_id,billing_cycle,meter_reading_start,meter_reading_end,notes,created_at)
VALUES (3,103,2023,1,11000.8,420.5,38.5,2800.0,3900.0,1400.0,1900.0,110,2.6,1350.0,GridSupply,MTR103,Monthly,70000,81000,'Data entry',DATE '2023-02-01');

-- Regional Weather Summary
CREATE TABLE regional_weather_summary (
    summary_id INTEGER PRIMARY KEY,
    region_code TEXT NOT NULL,
    year INTEGER NOT NULL,
    month INTEGER NOT NULL,
    avg_temp_c REAL NOT NULL,
    max_temp_c REAL NOT NULL,
    min_temp_c REAL NOT NULL,
    total_precip_mm REAL NOT NULL,
    avg_humidity_percent REAL NOT NULL,
    sunshine_hours REAL NOT NULL,
    wind_speed_avg_kmh REAL NOT NULL,
    wind_gust_max_kmh REAL NOT NULL,
    weather_events TEXT,
    frost_days INTEGER NOT NULL,
    heatwave_days INTEGER NOT NULL,
    created_date DATE NOT NULL,
    source_agency TEXT NOT NULL,
    data_quality_score REAL NOT NULL,
    notes TEXT,
    record_timestamp DATE NOT NULL,
    analyst_id INTEGER NOT NULL
);

INSERT INTO regional_weather_summary (summary_id,region_code,year,month,avg_temp_c,max_temp_c,min_temp_c,total_precip_mm,avg_humidity_percent,sunshine_hours,wind_speed_avg_kmh,wind_gust_max_kmh,weather_events,frost_days,heatwave_days,created_date,source_agency,data_quality_score,notes,record_timestamp,analyst_id)
VALUES (1,'RC01',2023,1,5.2,12.4,-2.1,45.0,78.5,15.3,30.0,'Snow;LightRain',12,0,DATE '2023-02-01','MetOffice',0.92,'Winter month',DATE '2023-02-01',101);

INSERT INTO regional_weather_summary (summary_id,region_code,year,month,avg_temp_c,max_temp_c,min_temp_c,total_precip_mm,avg_humidity_percent,sunshine_hours,wind_speed_avg_kmh,wind_gust_max_kmh,weather_events,frost_days,heatwave_days,created_date,source_agency,data_quality_score,notes,record_timestamp,analyst_id)
VALUES (2,'RC02',2023,1,2.8,9.5,-5.6,60.0,82.1,12.0,28.5,35.0,'Snow;Blizzard',18,0,DATE '2023-02-01','MetOffice',0.88,'High snowfall',DATE '2023-02-01',102);

INSERT INTO regional_weather_summary (summary_id,region_code,year,month,avg_temp_c,max_temp_c,min_temp_c,total_precip_mm,avg_humidity_percent,sunshine_hours,wind_speed_avg_kmh,wind_gust_max_kmh,weather_events,frost_days,heatwave_days,created_date,source_agency,data_quality_score,notes,record_timestamp,analyst_id)
VALUES (3,'RC03',2023,1,7.5,15.0,0.2,30.5,70.2,18.7,20.0,25.0,'Rain',4,0,DATE '2023-02-01','MetOffice',0.95,'Mild conditions',DATE '2023-02-01',103);

-- Digital Ad Campaign Metrics
CREATE TABLE digital_ad_campaign_metrics (
    campaign_id INTEGER PRIMARY KEY,
    platform TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    ctr REAL NOT NULL,
    conversions INTEGER NOT NULL,
    conversion_rate REAL NOT NULL,
    spend_usd REAL NOT NULL,
    revenue_usd REAL NOT NULL,
    cpc_usd REAL NOT NULL,
    cpm_usd REAL NOT NULL,
    roi REAL NOT NULL,
    audience_segment TEXT NOT NULL,
    targeting_criteria TEXT NOT NULL,
    ad_format TEXT NOT NULL,
    creative_id TEXT NOT NULL,
    ad_group_id TEXT NOT NULL,
    status TEXT NOT NULL,
    last_updated DATE NOT NULL
);

INSERT INTO digital_ad_campaign_metrics (campaign_id,platform,start_date,end_date,impressions,clicks,ctr,conversions,conversion_rate,spend_usd,revenue_usd,cpc_usd,cpm_usd,roi,audience_segment,targeting_criteria,ad_format,creative_id,ad_group_id,status,last_updated)
VALUES (1,'Search','2023-01-01','2023-01-31',150000,3500,0.0233,250,0.0714,8000.00,12500.00,2.29,53.33,0.56,'TechEnthusiasts','Keyword_Software','TextAd','CR001','AG001','Active',DATE '2023-02-01');

INSERT INTO digital_ad_campaign_metrics (campaign_id,platform,start_date,end_date,impressions,clicks,ctr,conversions,conversion_rate,spend_usd,revenue_usd,cpc_usd,cpm_usd,roi,audience_segment,targeting_criteria,ad_format,creative_id,ad_group_id,status,last_updated)
VALUES (2,'Social','2023-02-01','2023-02-28',200000,4200,0.0210,300,0.0714,9500.00,14000.00,2.26,47.50,0.47,'YoungAdults','Interest_Sports','VideoAd','CR002','AG002','Paused',DATE '2023-03-01');

INSERT INTO digital_ad_campaign_metrics (campaign_id,platform,start_date,end_date,impressions,clicks,ctr,conversions,conversion_rate,spend_usd,revenue_usd,cpc_usd,cpm_usd,roi,audience_segment,targeting_criteria,ad_format,creative_id,ad_group_id,status,last_updated)
VALUES (3,'Display','2023-03-01','2023-03-31',180000,3000,0.0167,220,0.0733,7200.00,11000.00,2.40,40.00,0.53,'Business Professionals','Behavior_Retail','BannerAd','CR003','AG003','Active',DATE '2023-04-01');

-- Employee Wellness Program
CREATE TABLE employee_wellness_program (
    entry_id INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    program_name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    participation_status TEXT NOT NULL,
    sessions_attended INTEGER NOT NULL,
    health_score INTEGER NOT NULL,
    stress_level INTEGER NOT NULL,
    sleep_hours_avg REAL NOT NULL,
    exercise_minutes_week INTEGER NOT NULL,
    nutrition_score INTEGER NOT NULL,
    medical_checkup_date DATE,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    facilitator TEXT NOT NULL,
    location TEXT NOT NULL,
    incentive_received TEXT,
    feedback_score INTEGER NOT NULL
);

INSERT INTO employee_wellness_program (entry_id,employee_id,program_name,start_date,end_date,participation_status,sessions_attended,health_score,stress_level,sleep_hours_avg,exercise_minutes_week,nutrition_score,medical_checkup_date,notes,created_at,updated_at,facilitator,location,incentive_received,feedback_score)
VALUES (1,2001,'Mindfulness','2023-01-15','2023-04-15','Completed',12,85,20,7.1,150,80,DATE '2023-04-10','Good progress',DATE '2023-01-15',DATE '2023-04-15','WellnessTeam','HQ','GiftCard',9);

INSERT INTO employee_wellness_program (entry_id,employee_id,program_name,start_date,end_date,participation_status,sessions_attended,health_score,stress_level,sleep_hours_avg,exercise_minutes_week,nutrition_score,medical_checkup_date,notes,created_at,updated_at,facilitator,location,incentive_received,feedback_score)
VALUES (2,2002,'FitnessChallenge','2023-02-01','2023-05-01','Ongoing',8,78,25,6.5,200,70,NULL,'Increased activity',DATE '2023-02-01',DATE '2023-04-20','FitnessCoach','Branch1','GymPass',8);

INSERT INTO employee_wellness_program (entry_id,employee_id,program_name,start_date,end_date,participation_status,sessions_attended,health_score,stress_level,sleep_hours_avg,exercise_minutes_week,nutrition_score,medical_checkup_date,notes,created_at,updated_at,facilitator,location,incentive_received,feedback_score)
VALUES (3,2003,'NutritionWorkshop','2023-03-10','2023-06-10','Pending',0,0,0,0.0,0,0,NULL,'Awaiting enrollment',DATE '2023-03-10',DATE '2023-03-10','Dietitian','HQ',NULL,0);

-- Vendor Performance Review
CREATE TABLE vendor_performance_review (
    review_id INTEGER PRIMARY KEY,
    vendor_id INTEGER NOT NULL,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    delivery_accuracy_percent REAL NOT NULL,
    quality_score REAL NOT NULL,
    compliance_score REAL NOT NULL,
    on_time_delivery_percent REAL NOT NULL,
    cost_variance_percent REAL NOT NULL,
    contract_status TEXT NOT NULL,
    notes TEXT,
    reviewer_id INTEGER NOT NULL,
    review_date DATE NOT NULL,
    corrective_actions TEXT,
    risk_level TEXT NOT NULL,
    sustainability_score REAL NOT NULL,
    communication_rating REAL NOT NULL,
    technical_support_rating REAL NOT NULL,
    overall_rating REAL NOT NULL,
    escalation_count INTEGER NOT NULL,
    last_contact_date DATE NOT NULL
);

INSERT INTO vendor_performance_review (review_id,vendor_id,period_start,period_end,delivery_accuracy_percent,quality_score,compliance_score,on_time_delivery_percent,cost_variance_percent,contract_status,notes,reviewer_id,review_date,corrective_actions,risk_level,sustainability_score,communication_rating,technical_support_rating,overall_rating,escalation_count,last_contact_date)
VALUES (1,301,DATE '2023-01-01',DATE '2023-03-31',98.5,4.7,4.9,97.2,1.2,'Active','Consistent performance',401,DATE '2023-04-05','Improve packaging','Low',4.5,4.8,4.6,4.65,0,DATE '2023-04-01');

INSERT INTO vendor_performance_review (review_id,vendor_id,period_start,period_end,delivery_accuracy_percent,quality_score,compliance_score,on_time_delivery_percent,cost_variance_percent,contract_status,notes,reviewer_id,review_date,corrective_actions,risk_level,sustainability_score,communication_rating,technical_support_rating,overall_rating,escalation_count,last_contact_date)
VALUES (2,302,DATE '2023-01-01',DATE '2023-03-31',92.0,3.8,4.2,89.5,3.5,'Warning','Late deliveries observed',402,DATE '2023-04-06','Revise logistics plan','Medium',3.9,3.7,3.8,3.8,2,DATE '2023-04-02');

INSERT INTO vendor_performance_review (review_id,vendor_id,period_start,period_end,delivery_accuracy_percent,quality_score,compliance_score,on_time_delivery_percent,cost_variance_percent,contract_status,notes,reviewer_id,review_date,corrective_actions,risk_level,sustainability_score,communication_rating,technical_support_rating,overall_rating,escalation_count,last_contact_date)
VALUES (3,303,DATE '2023-01-01',DATE '2023-03-31',85.0,3.2,3.5,80.0,5.0,'Termination','Quality issues',403,DATE '2023-04-07','Terminate contract','High',2.5,2.8,2.9,2.8,5,DATE '2023-04-03');

-- Research Project Milestone
CREATE TABLE research_project_milestone (
    milestone_id INTEGER PRIMARY KEY,
    project_id INTEGER NOT NULL,
    milestone_name TEXT NOT NULL,
    planned_date DATE NOT NULL,
    actual_date DATE,
    status TEXT NOT NULL,
    responsible_person TEXT NOT NULL,
    budget_allocated REAL NOT NULL,
    budget_used REAL,
    deliverable TEXT,
    risk_assessment TEXT,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    phase TEXT NOT NULL,
    dependency_ids TEXT,
    metric_value REAL,
    metric_unit TEXT,
    stakeholder_feedback TEXT,
    approval_status TEXT NOT NULL
);

INSERT INTO research_project_milestone (milestone_id,project_id,milestone_name,planned_date,actual_date,status,responsible_person,budget_allocated,budget_used,deliverable,risk_assessment,notes,created_at,updated_at,phase,dependency_ids,metric_value,metric_unit,stakeholder_feedback,approval_status)
VALUES (1,501,'Literature Review','2023-02-01','2023-02-05','Completed','DrSmith',15000.00,14800.00,'Report','Low','On schedule',DATE '2023-01-20',DATE '2023-02-06','Initiation','',95.0,'Score','Positive','Approved');

INSERT INTO research_project_milestone (milestone_id,project_id,milestone_name,planned_date,actual_date,status,responsible_person,budget_allocated,budget_used,deliverable,risk_assessment,notes,created_at,updated_at,phase,dependency_ids,metric_value,metric_unit,stakeholder_feedback,approval_status)
VALUES (2,501,'Data Collection','2023-03-01','2023-03-10','Completed','DrLee',30000.00,31000.00,'Dataset','Medium','Slight overrun',DATE '2023-02-15',DATE '2023-03-11','Execution','1',88.0,'Score','Mixed','Approved');

INSERT INTO research_project_milestone (milestone_id,project_id,milestone_name,planned_date,actual_date,status,responsible_person,budget_allocated,budget_used,deliverable,risk_assessment,notes,created_at,updated_at,phase,dependency_ids,metric_value,metric_unit,stakeholder_feedback,approval_status)
VALUES (3,501,'Final Analysis','2023-04-01',NULL,'Pending','DrKim',20000.00,NULL,'Paper','High','Pending data cleaning',DATE '2023-03-20',DATE '2023-03-20','Closure','1,2',NULL,NULL,'Pending','Pending');

-- City Infrastructure Maintenance Log
CREATE TABLE city_infrastructure_maintenance_log (
    log_id INTEGER PRIMARY KEY,
    asset_type TEXT NOT NULL,
    asset_id INTEGER NOT NULL,
    maintenance_date DATE NOT NULL,
    maintenance_type TEXT NOT NULL,
    contractor TEXT NOT NULL,
    cost REAL NOT NULL,
    duration_hours REAL NOT NULL,
    downtime_hours REAL NOT NULL,
    compliance_flag INTEGER NOT NULL,
    notes TEXT,
    created_by TEXT NOT NULL,
    created_at DATE NOT NULL,
    approved_by TEXT,
    approved_at DATE,
    schedule_id INTEGER,
    priority_level INTEGER NOT NULL,
    inspection_result TEXT,
    next_maintenance_due DATE,
    location_coordinates TEXT,
    impact_rating INTEGER NOT NULL
);

INSERT INTO city_infrastructure_maintenance_log (log_id,asset_type,asset_id,maintenance_date,maintenance_type,contractor,cost,duration_hours,downtime_hours,compliance_flag,notes,created_by,created_at,approved_by,approved_at,schedule_id,priority_level,inspection_result,next_maintenance_due,location_coordinates,impact_rating)
VALUES (1,'TrafficSignal',9001,DATE '2023-01-15','Routine','SignalCo',5000.00,8.0,2.0,1,'Replaced bulbs', 'OpsTeam',DATE '2023-01-15','MgrA',DATE '2023-01-16',101,2,'Pass',DATE '2023-07-15','40.7128N_74.0060W',3);

INSERT INTO city_infrastructure_maintenance_log (log_id,asset_type,asset_id,maintenance_date,maintenance_type,contractor,cost,duration_hours,downtime_hours,compliance_flag,notes,created_by,created_at,approved_by,approved_at,schedule_id,priority_level,inspection_result,next_maintenance_due,location_coordinates,impact_rating)
VALUES (2,'WaterPipe',3005,DATE '2023-02-10','LeakRepair','PipeWorks',12000.00,12.0,5.0,1,'Section replacement', 'MaintenanceCrew',DATE '2023-02-10','MgrB',DATE '2023-02-11',102,1,'Pass',DATE '2024-02-10','34.0522N_118.2437W',5);

INSERT INTO city_infrastructure_maintenance_log (log_id,asset_type,asset_id,maintenance_date,maintenance_type,contractor,cost,duration_hours,downtime_hours,compliance_flag,notes,created_by,created_at,approved_by,approved_at,schedule_id,priority_level,inspection_result,next_maintenance_due,location_coordinates,impact_rating)
VALUES (3,'Bridge',120,DATE '2023-03-05','StructuralCheck','BridgeInc',25000.00,16.0,0.0,1,'No issues found', 'InspectTeam',DATE '2023-03-05','MgrC',DATE '2023-03-06',103,3,'Pass',DATE '2025-03-05','41.8781N_87.6298W',2);

-- Renewable Energy Farm Performance
CREATE TABLE renewable_energy_farm_performance (
    farm_id INTEGER PRIMARY KEY,
    farm_name TEXT NOT NULL,
    reporting_date DATE NOT NULL,
    total_generation_mwh REAL NOT NULL,
    capacity_utilization_percent REAL NOT NULL,
    average_irradiance_w_per_m2 REAL,
    wind_speed_avg_mps REAL,
    downtime_hours REAL NOT NULL,
    maintenance_events INTEGER NOT NULL,
    revenue_usd REAL NOT NULL,
    operating_cost_usd REAL NOT NULL,
    net_margin_usd REAL NOT NULL,
    carbon_offset_tons REAL NOT NULL,
    grid_connection_status TEXT NOT NULL,
    power_purchase_agreement TEXT,
    notes TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    region_code TEXT NOT NULL,
    weather_station_id INTEGER,
    equipment_health_index REAL NOT NULL
);

INSERT INTO renewable_energy_farm_performance (farm_id,farm_name,reporting_date,total_generation_mwh,capacity_utilization_percent,average_irradiance_w_per_m2,wind_speed_avg_mps,downtime_hours,maintenance_events,revenue_usd,operating_cost_usd,net_margin_usd,carbon_offset_tons,grid_connection_status,power_purchase_agreement,notes,created_at,updated_at,region_code,weather_station_id,equipment_health_index)
VALUES (1,'SolarParkAlpha',DATE '2023-03-31',1500.0,85.0,550.0,NULL,12.0,2,200000.0,120000.0,80000.0,100.0,'Connected','PPA_2020','Stable output',DATE '2023-04-01',DATE '2023-04-01','RC01',201,92.5);

INSERT INTO renewable_energy_farm_performance (farm_id,farm_name,reporting_date,total_generation_mwh,capacity_utilization_percent,average_irradiance_w_per_m2,wind_speed_avg_mps,downtime_hours,maintenance_events,revenue_usd,operating_cost_usd,net_margin_usd,carbon_offset_tons,grid_connection_status,power_purchase_agreement,notes,created_at,updated_at,region_code,weather_station_id,equipment_health_index)
VALUES (2,'WindFarmBeta',DATE '2023-03-31',2500.0,78.0,NULL,7.5,20.0,5,300000.0,180000.0,120000.0,150.0,'Connected','PPA_2019','Wind variability observed',DATE '2023-04-01',DATE '2023-04-01','RC02',202,88.0);

INSERT INTO renewable_energy_farm_performance (farm_id,farm_name,reporting_date,total_generation_mwh,capacity_utilization_percent,average_irradiance_w_per_m2,wind_speed_avg_mps,downtime_hours,maintenance_events,revenue_usd,operating_cost_usd,net_margin_usd,carbon_offset_tons,grid_connection_status,power_purchase_agreement,notes,created_at,updated_at,region_code,weather_station_id,equipment_health_index)
VALUES (3,'HybridFarmGamma',DATE '2023-03-31',1800.0,82.0,500.0,5.2,15.0,3,250000.0,150000.0,100000.0,120.0,'Connected','PPA_2021','Hybrid performance good',DATE '2023-04-01',DATE '2023-04-01','RC03',203,90.0);

-- Public Art Inventory
CREATE TABLE public_art_inventory (
    art_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    artist TEXT NOT NULL,
    installation_date DATE NOT NULL,
    material TEXT NOT NULL,
    dimensions TEXT NOT NULL,
    location_address TEXT NOT NULL,
    city TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    ownership TEXT NOT NULL,
    funding_source TEXT NOT NULL,
    maintenance_responsibility TEXT NOT NULL,
    condition_status TEXT NOT NULL,
    last_restoration_date DATE,
    estimated_value_usd REAL,
    public_accessible INTEGER NOT NULL,
    description TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL
);

INSERT INTO public_art_inventory (art_id,title,artist,installation_date,material,dimensions,location_address,city,latitude,longitude,ownership,funding_source,maintenance_responsibility,condition_status,last_restoration_date,estimated_value_usd,public_accessible,description,created_at,updated_at)
VALUES (1,'Harmony','JaneDoe',DATE '2020-06-15','Bronze','2x3m','Central Plaza','Metropolis',40.7128,-74.0060,'City','PublicGrant','ArtsDept','Good',DATE '2022-05-01',50000.00,1,'Abstract sculpture',DATE '2020-06-15',DATE '2022-05-01');

INSERT INTO public_art_inventory (art_id,title,artist,installation_date,material,dimensions,location_address,city,latitude,longitude,ownership,funding_source,maintenance_responsibility,condition_status,last_restoration_date,estimated_value_usd,public_accessible,description,created_at,updated_at)
VALUES (2,'River Flow','JohnSmith',DATE '2019-09-10','Steel','5x1m','Riverwalk','RiverCity',34.0522,-118.2437,'Municipality','PrivateDonor','ParksDept','Fair',DATE '2021-08-20',75000.00,1,'Dynamic kinetic installation',DATE '2019-09-10',DATE '2021-08-20');

INSERT INTO public_art_inventory (art_id,title,artist,installation_date,material,dimensions,location_address,city,latitude,longitude,ownership,funding_source,maintenance_responsibility,condition_status,last_restoration_date,estimated_value_usd,public_accessible,description,created_at,updated_at)
VALUES (3,'Light Pulse','AnaLee',DATE '2021-04-22','LED','10x10m','TechPark','InnovationVille',41.8781,-87.6298,'Corporation','CorporateSponsorship','FacilitiesMgmt','Excellent',NULL,120000.00,1,'Interactive light display',DATE '2021-04-22',DATE '2021-04-22');

-- Corporate Social Responsibility Initiative
CREATE TABLE corporate_social_responsibility_initiative (
    initiative_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    budget_usd REAL NOT NULL,
    target_community TEXT NOT NULL,
    impact_metric TEXT NOT NULL,
    beneficiaries_count INTEGER NOT NULL,
    partner_organization TEXT,
    status TEXT NOT NULL,
    responsible_department TEXT NOT NULL,
    reporting_frequency TEXT NOT NULL,
    last_report_date DATE,
    outcomes_summary TEXT,
    challenges TEXT,
    next_steps TEXT,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    approval_status TEXT NOT NULL,
    manager_id INTEGER NOT NULL
);

INSERT INTO corporate_social_responsibility_initiative (initiative_id,name,start_date,end_date,budget_usd,target_community,impact_metric,beneficiaries_count,partner_organization,status,responsible_department,reporting_frequency,last_report_date,outcomes_summary,challenges,next_steps,created_at,updated_at,approval_status,manager_id)
VALUES (1,'GreenCampus','2023-01-01','2023-12-31',250000.00,'LocalSchools','TreePlanting','5000','EcoNGO','Active','Sustainability','Quarterly',DATE '2023-03-31','Planted 2000 trees','Weather delays','Plan second phase',DATE '2023-01-01',DATE '2023-04-01','Approved',501);

INSERT INTO corporate_social_responsibility_initiative (initiative_id,name,start_date,end_date,budget_usd,target_community,impact_metric,beneficiaries_count,partner_organization,status,responsible_department,reporting_frequency,last_report_date,outcomes_summary,challenges,next_steps,created_at,updated_at,approval_status,manager_id)
VALUES (2,'TechEducation','2023-03-01',NULL,180000.00,'UnderprivilegedYouth','SkillTrainingHours','1200','CodeAcademy','Ongoing','CommunityOutreach','Monthly',DATE '2023-04-15','Completed 30 workshops','Low attendance','Increase outreach',DATE '2023-03-01',DATE '2023-04-15','Pending',502);

INSERT INTO corporate_social_responsibility_initiative (initiative_id,name,start_date,end_date,budget_usd,target_community,impact_metric,beneficiaries_count,partner_organization,status,responsible_department,reporting_frequency,last_report_date,outcomes_summary,challenges,next_steps,created_at,updated_at,approval_status,manager_id)
VALUES (3,'HealthScreening','2023-02-15','2023-08-15',95000.00,'Employees','ScreeningsConducted','800','HealthCorp','Completed','HR','Biannual',DATE '2023-08-01','All employees screened','Scheduling conflicts','Annual follow‑up',DATE '2023-02-15',DATE '2023-08-01','Approved',503);