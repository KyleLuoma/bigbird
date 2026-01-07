-- Campus Future Planning
CREATE TABLE campus_future_planning
(
    plan_id                     TEXT PRIMARY KEY,
    plan_name                   TEXT,
    description                 TEXT,
    start_year                  INTEGER,
    end_year                    INTEGER,
    budget_estimate             REAL,
    funding_source              TEXT,
    status                      TEXT,
    lead_department             TEXT,
    stakeholder_group           TEXT,
    risk_level                  TEXT,
    approval_date               TEXT,
    review_cycle_months         INTEGER,
    projected_impact_score      REAL,
    alignment_strategy          TEXT,
    created_by                  TEXT,
    created_at                  TEXT,
    updated_at                  TEXT,
    notes                       TEXT,
    priority                    TEXT
);

INSERT INTO campus_future_planning (plan_id,plan_name,description,start_year,end_year,budget_estimate,funding_source,status,lead_department,stakeholder_group,risk_level,approval_date,review_cycle_months,projected_impact_score,alignment_strategy,created_by,created_at,updated_at,notes,priority) VALUES
('CFP001','Campus Expansion','Add new academic buildings and green spaces',2024,2029,12500000,'State Grant','Approved','Facilities','Administration','Medium','2023-06-15',12,8.7,'Strategic Growth','jdoe','2023-01-01','2023-08-01','Initial phase complete','High'),
('CFP002','Renewable Energy Initiative','Install solar panels across campus roofs',2025,2028,8000000,'University Endowment','Planned','Sustainability','Faculty','Low','2024-02-10',6,9.2,'Carbon Neutrality','asmith','2024-01-05','2024-04-20','Pending vendor selection','Medium'),
('CFP003','Digital Learning Hub','Create a central hub for hybrid learning technologies',2023,2026,4500000,'Private Donation','In Progress','IT Services','Students','High','2022-11-30',9,7.5,'Learning Innovation','mbrown','2022-12-01','2023-03-10','Construction started','High');

-- Alumni Endowment Fund
CREATE TABLE alumni_endowment_fund
(
    fund_id               TEXT PRIMARY KEY,
    fund_name             TEXT,
    established_year      INTEGER,
    principal_amount      REAL,
    annual_yield_percent  REAL,
    managed_by            TEXT,
    investment_strategy   TEXT,
    restricted_use        TEXT,
    beneficiary_group     TEXT,
    approval_status       TEXT,
    governance_board      TEXT,
    last_audit_date       TEXT,
    next_audit_due        TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    contact_email         TEXT,
    contact_phone         TEXT,
    tax_id                TEXT,
    fund_status           TEXT
);

INSERT INTO alumni_endowment_fund (fund_id,fund_name,established_year,principal_amount,annual_yield_percent,managed_by,investment_strategy,restricted_use,beneficiary_group,approval_status,governance_board,last_audit_date,next_audit_due,notes,created_at,updated_at,contact_email,contact_phone,tax_id,fund_status) VALUES
('AEF001','Scholarship Endowment','2005',25000000,4.5,'University Treasurer','Diversified Portfolio','Scholarships','Undergraduate Students','Approved','Board of Regents','2022-09-15','2024-09-15','Stable growth','2005-02-01','2023-02-01','alumni@univ.edu','555-1234','12-3456789','Active'),
('AEF002','Research Chair Endowment','2010',15000000,5.0,'Finance Office','Growth Oriented','Research Chairs','Faculty','Approved','Endowment Committee','2023-03-10','2025-03-10','Recently rebalanced','2010-06-10','2023-06-10','research@univ.edu','555-5678','98-7654321','Active'),
('AEF003','Community Outreach Fund','2018',8000000,3.8,'Investment Office','Conservative','Community Programs','Local NGOs','Pending','Advisory Council','2023-11-01','2025-11-01','Awaiting final approval','2018-09-20','2023-09-20','outreach@univ.edu','555-9012','23-4567890','Pending');

-- Student Entrepreneurship Program
CREATE TABLE student_entrepreneurship_program
(
    program_id               TEXT PRIMARY KEY,
    program_name             TEXT,
    launch_year              INTEGER,
    department               TEXT,
    coordinator              TEXT,
    budget                   REAL,
    number_of_participants  INTEGER,
    mentor_count             INTEGER,
    startup_success_rate     REAL,
    application_deadline     TEXT,
    program_duration_months INTEGER,
    focus_area               TEXT,
    eligibility_criteria     TEXT,
    outcome_summary          TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    website_url              TEXT,
    contact_email            TEXT,
    contact_phone            TEXT,
    status                   TEXT
);

INSERT INTO student_entrepreneurship_program (program_id,program_name,launch_year,department,coordinator,budget,number_of_participants,mentor_count,startup_success_rate,application_deadline,program_duration_months,focus_area,eligibility_criteria,outcome_summary,created_at,updated_at,website_url,contact_email,contact_phone,status) VALUES
('SEP001','LaunchPad','2021','Business','Karen Lee',120000,45,10,0.38,'2023-04-15',12,'Tech Innovation','Open to all undergrads','15 startups launched','2021-01-10','2023-02-20','https://launchpad.univ.edu','launchpad@univ.edu','555-2345','Active'),
('SEP002','Social Impact Incubator','2019','Social Sciences','Luis Martinez',85000,30,8,0.45,'2022-11-30',9,'Social Entrepreneurship','Must have community project','10 ventures received seed funding','2019-03-05','2022-12-01','https://socialincubator.univ.edu','socialinc@univ.edu','555-6789','Active'),
('SEP003','Green Ventures Program','2022','Environmental Studies','Nina Patel',95000,25,7,0.50,'2024-01-20',10,'Sustainable Business','GPA 3.0+ and sustainability focus','5 companies earned sustainability awards','2022-06-12','2023-07-15','https://greenventures.univ.edu','greenventures@univ.edu','555-1122','Planned');

-- Faculty Research Infrastructure
CREATE TABLE faculty_research_infrastructure
(
    infra_id                TEXT PRIMARY KEY,
    infra_name              TEXT,
    building                TEXT,
    floor                   INTEGER,
    room_number             TEXT,
    capacity                INTEGER,
    equipment_list          TEXT,
    maintenance_contract    TEXT,
    vendor                  TEXT,
    installation_date       TEXT,
    last_inspection_date   TEXT,
    next_inspection_due    TEXT,
    budget                  REAL,
    funding_source          TEXT,
    project_lead            TEXT,
    status                  TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    access_restriction_level TEXT
);

INSERT INTO faculty_research_infrastructure (infra_id,infra_name,building,floor,room_number,capacity,equipment_list,maintenance_contract,vendor,installation_date,last_inspection_date,next_inspection_due,budget,funding_source,project_lead,status,notes,created_at,updated_at,access_restriction_level) VALUES
('FRI001','Advanced Microscopy Suite','Science Hall',2,'210A',12,'Electron Microscope; Confocal Microscope','Contract2024','TechEquip Co','2020-09-15','2023-03-01','2024-03-01',2500000,'Federal Grant','Dr. Emily Carter','Operational','Requires quarterly calibration','2020-09-01','2023-03-02','Restricted'),
('FRI002','Computational Biology Lab','Tech Center',3,'315B',20,'High-Performance Cluster; GPU Nodes','ServiceAgreement2025','ComputeSys Ltd','2021-06-10','2023-06-15','2024-06-15',1800000,'University Funds','Prof. Alan Zhou','Operational','Upgrade scheduled for Q4 2023','2021-06-01','2023-06-16','Restricted'),
('FRI003','Renewable Energy Testing Facility','Engineering Complex',1,'101C',15,'Wind Tunnel; Solar Array Test Bed','Maint2023','EcoTech Solutions','2019-11-20','2023-01-10','2024-01-10',3000000,'Industry Partnership','Dr. Maria Gomez','Under Construction','Phase 2 to start 2024','2019-11-01','2023-01-11','Limited');

-- Library Rare Collection
CREATE TABLE library_rare_collection
(
    collection_id           TEXT PRIMARY KEY,
    collection_name         TEXT,
    acquisition_year        INTEGER,
    origin                  TEXT,
    condition               TEXT,
    estimated_value         REAL,
    curator                 TEXT,
    storage_location        TEXT,
    access_policy           TEXT,
    digitalization_status   TEXT,
    last_audit_date        TEXT,
    next_audit_due         TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    contact_email           TEXT,
    contact_phone           TEXT,
    preservation_method    TEXT,
    related_exhibitions    TEXT,
    restricted_flag        INTEGER
);

INSERT INTO library_rare_collection (collection_id,collection_name,acquisition_year,origin,condition,estimated_value,curator,storage_location,access_policy,digitalization_status,last_audit_date,next_audit_due,notes,created_at,updated_at,contact_email,contact_phone,preservation_method,related_exhibitions,restricted_flag) VALUES
('LRC001','19th Century Manuscripts','1998','Europe','Excellent',750000,'Dr. Helen Pierce','Vault A','By Appointment','Partial','2022-12-01','2024-12-01','Requires climate monitoring','1998-05-10','2023-01-15','rarecol@univ.edu','555-3344','Cold Storage','Exhibit2023','1'),
('LRC002','First Editions of American Poetry','2005','USA','Good',420000,'Mr. Thomas Reed','Special Shelf 3','Open to Researchers','Completed','2023-03-20','2025-03-20','Digitized versions available','2005-03-01','2023-03-20','rarecol@univ.edu','555-7788','Encapsulation','PoetryWeek2022','0'),
('LRC003','Ancient Maps Collection','2012','Asia','Fair',610000,'Ms. Aisha Khan','Map Room','Restricted','In Progress','2023-07-10','2025-07-10','Restoration underway','2012-08-15','2023-07-10','rarecol@univ.edu','555-9900','Flat File Storage','Cartography Expo 2021','1');

-- Sustainability Roadmap
CREATE TABLE sustainability_roadmap
(
    roadmap_id                     TEXT PRIMARY KEY,
    title                          TEXT,
    version                        INTEGER,
    effective_date                 TEXT,
    review_date                    TEXT,
    overall_goal                   TEXT,
    target_year                    INTEGER,
    key_milestones                 TEXT,
    responsible_department         TEXT,
    budget                         REAL,
    greenhouse_gas_reduction_percent REAL,
    energy_efficiency_target_percent REAL,
    waste_diversion_target_percent REAL,
    water_conservation_target_percent REAL,
    stakeholder_engagement_plan    TEXT,
    status                         TEXT,
    notes                          TEXT,
    created_by                     TEXT,
    created_at                     TEXT,
    updated_at                     TEXT
);

INSERT INTO sustainability_roadmap (roadmap_id,title,version,effective_date,review_date,overall_goal,target_year,key_milestones,responsible_department,budget,greenhouse_gas_reduction_percent,energy_efficiency_target_percent,waste_diversion_target_percent,water_conservation_target_percent,stakeholder_engagement_plan,status,notes,created_by,created_at,updated_at) VALUES
('SR001','Campus Climate Action Plan',1,'2023-01-01','2025-12-31','Carbon Neutrality by 2030',2030,'Install solar; Upgrade HVAC; Reduce waste','Sustainability Office',12000000,45.0,30.0,50.0,25.0,'Monthly forums and surveys','Approved','First version approved','Sustainability Team','2023-01-01','2023-04-01'),
('SR002','Zero Waste Initiative',2,'2022-06-15','2024-06-15','Zero Waste Certification','2024','Introduce composting; Ban single-use plastics','Facilities Management',8000000,0.0,0.0,90.0,0.0,'Student committees and staff workshops','In Progress','Updated after pilot program','Facilities Lead','2022-06-15','2023-02-20'),
('SR003','Water Stewardship Program',1,'2024-03-01','2026-03-01','Reduce potable water use by 35%','2027','Install low-flow fixtures; Rainwater harvesting','Operations',5000000,0.0,0.0,0.0,35.0,'Community outreach and signage','Planned','Awaiting budget approval','Operations Manager','2024-03-01','2024-05-10');

-- Health Service Quality Audit
CREATE TABLE health_service_quality_audit
(
    audit_id                     TEXT PRIMARY KEY,
    audit_period                 TEXT,
    facility                     TEXT,
    auditor                      TEXT,
    overall_score                REAL,
    patient_satisfaction_score   REAL,
    staff_compliance_score       REAL,
    equipment_functionality_score REAL,
    medication_error_rate        REAL,
    infection_control_score      REAL,
    wait_time_average_minutes    REAL,
    documentation_accuracy_score REAL,
    recommendations              TEXT,
    follow_up_date               TEXT,
    status                       TEXT,
    notes                        TEXT,
    created_at                   TEXT,
    updated_at                   TEXT,
    contact_email                TEXT,
    contact_phone                TEXT
);

INSERT INTO health_service_quality_audit (audit_id,audit_period,facility,auditor,overall_score,patient_satisfaction_score,staff_compliance_score,equipment_functionality_score,medication_error_rate,infection_control_score,wait_time_average_minutes,documentation_accuracy_score,recommendations,follow_up_date,status,notes,created_at,updated_at,contact_email,contact_phone) VALUES
('HQA001','2023 Q1','Student Health Center','Accredited Auditors Inc',88.5,92.0,85.0,90.0,0.02,95.0,15.4,93.0,'Improve triage workflow; Update EMR templates','2023-07-15','Completed','All recommendations addressed','2023-04-01','2023-07-16','audit@univ.edu','555-2211'),
('HQA002','2022 Annual','Campus Medical Clinic','HealthCheck LLC',81.0,78.5,80.0,75.0,0.05,88.0,22.0,80.0,'Upgrade imaging equipment; Conduct staff refresher training','2023-01-20','Completed','Equipment upgrade pending','2022-01-10','2022-12-30','audit@univ.edu','555-3322'),
('HQA003','2023 Q3','Wellness Center','QualityFirst Audits',90.2,94.3,89.5,92.0,0.01,97.0,12.8,95.5,'Implement mobile check‑in app','2024-01-05','In Progress','App development started','2023-09-01','2023-09-15','audit@univ.edu','555-4433');

-- Campus Accessibility Feature
CREATE TABLE campus_accessibility_feature
(
    feature_id                TEXT PRIMARY KEY,
    feature_type              TEXT,
    location                  TEXT,
    installed_date            TEXT,
    last_inspection_date      TEXT,
    compliance_status         TEXT,
    maintenance_schedule      TEXT,
    responsible_department    TEXT,
    cost                      REAL,
    funding_source            TEXT,
    accessible_by             TEXT,
    notes                     TEXT,
    created_at                TEXT,
    updated_at                TEXT,
    contact_email             TEXT,
    contact_phone             TEXT,
    photo_url                 TEXT,
    inspection_result         TEXT,
    next_inspection_due       TEXT,
    status                    TEXT
);

INSERT INTO campus_accessibility_feature (feature_id,feature_type,location,installed_date,last_inspection_date,compliance_status,maintenance_schedule,responsible_department,cost,funding_source,accessible_by,notes,created_at,updated_at,contact_email,contact_phone,photo_url,inspection_result,next_inspection_due,status) VALUES
('CAF001','Ramp','Main Library Entrance','2020-08-12','2023-06-01','Compliant','Annual','Facilities',15000,'University Funds','Wheelchair Users','Metal ramp with handrails','2020-08-12','2023-06-01','accessibility@univ.edu','555-5566','http://example.com/ramp1.jpg','Pass','2024-06-01','Operational'),
('CAF002','Elevator','Science Hall 2nd Floor','2019-04-20','2023-05-15','Compliant','Semi‑annual','Facilities',85000,'State Grant','Mobility Impaired','Elevator equipped with Braille buttons','2019-04-20','2023-05-15','accessibility@univ.edu','555-6677','http://example.com/elevator1.jpg','Pass','2024-05-15','Operational'),
('CAF003','Tactile Signage','Campus Quad','2022-01-05','2023-03-10','Compliant','Biennial','Campus Planning',5000,'Donations','Visually Impaired','Signage installed near main pathways','2022-01-05','2023-03-10','accessibility@univ.edu','555-7788','http://example.com/signage1.jpg','Pass','2025-01-05','Operational');

-- Transportation Fleet Inventory
CREATE TABLE transportation_fleet_inventory
(
    vehicle_id                TEXT PRIMARY KEY,
    vehicle_type              TEXT,
    make                      TEXT,
    model                     TEXT,
    year                      INTEGER,
    license_plate             TEXT,
    vin                       TEXT,
    capacity                  INTEGER,
    fuel_type                 TEXT,
    fuel_efficiency           REAL,
    assigned_department       TEXT,
    status                    TEXT,
    mileage                   INTEGER,
    last_service_date         TEXT,
    next_service_due          TEXT,
    insurance_provider        TEXT,
    policy_number             TEXT,
    purchase_price            REAL,
    depreciation_years        INTEGER,
    notes                     TEXT
);

INSERT INTO transportation_fleet_inventory (vehicle_id,vehicle_type,make,model,year,license_plate,vin,capacity,fuel_type,fuel_efficiency,assigned_department,status,mileage,last_service_date,next_service_due,insurance_provider,policy_number,purchase_price,depreciation_years,notes) VALUES
('TFI001','Shuttle Bus','Ford','Transit','2021','ABC1234','1FTRX18L1XKA12345',30,'Diesel',8.5,'Student Services','Active',45200,'2023-04-10','2024-04-10','SafeDrive Insurance','SDI-78901',120000,8,'Main campus shuttle route'),
('TFI002','Electric Van','Nissan','e‑VAN','2023','EV4567','5NPEB4AC6FH884321',12,'Electric',0,'Facilities Maintenance','Active',15000,'2023-09-01','2024-09-01','GreenCover Insurance','GCI-44567',80000,5,'Used for equipment transport'),
('TFI003','Hybrid SUV','Toyota','RAV4 Hybrid','2020','HYD8910','4T1BF1FK0LU123456',5,'Hybrid',30,'Campus Security','In Repair',60000,'2023-02-20','2024-02-20','SecureAuto','SA-33221',35000,7','Patrol and emergency response');

-- Community Art Fund
CREATE TABLE community_art_fund
(
    fund_id                  TEXT PRIMARY KEY,
    fund_name                TEXT,
    established_year         INTEGER,
    total_amount             REAL,
    allocated_amount         REAL,
    remaining_amount         REAL,
    administrating_body      TEXT,
    eligibility_criteria     TEXT,
    application_deadline     TEXT,
    award_cycle_months       INTEGER,
    number_of_grants         INTEGER,
    focus_areas              TEXT,
    selection_process        TEXT,
    status                   TEXT,
    last_distribution_date   TEXT,
    next_distribution_due    TEXT,
    contact_email            TEXT,
    contact_phone            TEXT,
    website_url              TEXT,
    notes                    TEXT
);

INSERT INTO community_art_fund (fund_id,fund_name,established_year,total_amount,allocated_amount,remaining_amount,administrating_body,eligibility_criteria,application_deadline,award_cycle_months,number_of_grants,focus_areas,selection_process,status,last_distribution_date,next_distribution_due,contact_email,contact_phone,website_url,notes) VALUES
('CAF001','Local Artists Grant','2015',500000,320000,180000,'Arts Council','Resident artists in city','2023-10-31',12,8,'Public murals; Sculptures','Peer review panel','Active','2023-06-15','2024-06-15','artfund@univ.edu','555-8899','http://artfund.univ.edu','Funding for community beautification projects'),
('CAF002','Youth Art Initiative','2018',200000,90000,110000,'Youth Services Dept','Artists under 25','2024-03-15',6,4,'Workshops; Interactive installations','Blind scoring','Active','2023-12-01','2024-06-01','youthart@univ.edu','555-9901','http://youthart.univ.edu','Encouraging emerging talent'),
('CAF003','Cultural Heritage Preservation Fund','2020',350000,150000,200000,'Heritage Office','Non‑profit cultural groups','2023-11-30',12,6,'Restoration; Oral history projects','Expert jury','Planned','2023-08-20','2024-08-20','heritage@univ.edu','555-1010','http://heritagefund.univ.edu','Supporting preservation of local traditions');