-- ClinicalTrialSiteInfrastructure: details about physical infrastructure of clinical trial sites
CREATE TABLE ClinicalTrialSiteInfrastructure (
    site_id INTEGER PRIMARY KEY,
    building_name TEXT,
    floor_number INTEGER,
    wing_code TEXT,
    total_area_sqft INTEGER,
    number_of_beds INTEGER,
    icu_capacity INTEGER,
    pharmacy_area_sqft INTEGER,
    radiology_suite_count INTEGER,
    oncology_unit_present INTEGER,
    hvac_system_id INTEGER,
    power_backup_kw INTEGER,
    construction_year INTEGER,
    last_renovation_date DATE,
    compliance_certification TEXT,
    emergency_exit_count INTEGER,
    parking_spaces INTEGER,
    security_level INTEGER,
    waste_management_contract TEXT,
    it_infrastructure_rating INTEGER,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO ClinicalTrialSiteInfrastructure VALUES (1, 'AlphaCenter', 3, 'A', 25000, 120, 8, 2000, 2, 1, 101, 500, 1998, '2015-06-20', 'ISO9001', 4, 150, 3, 'EcoWasteCo', 9);
INSERT INTO ClinicalTrialSiteInfrastructure VALUES (2, 'BetaWing', 1, 'B', 18000, 80, 5, 1500, 1, 0, 102, 300, 2005, '2018-09-15', 'ISO14001', 3, 80, 2, 'GreenDispose', 7);
INSERT INTO ClinicalTrialSiteInfrastructure VALUES (3, 'GammaTower', 5, 'C', 30000, 200, 12, 2500, 3, 1, 103, 800, 2010, '2020-01-10', 'ISO27001', 5, 200, 4, 'CleanEnviro', 10);


-- MedicalSupplyChainCompliance: audit records for supply chain compliance
CREATE TABLE MedicalSupplyChainCompliance (
    audit_id INTEGER PRIMARY KEY,
    supplier_id INTEGER,
    product_category TEXT,
    batch_number TEXT,
    received_date DATE,
    inspected_by TEXT,
    temperature_recorded REAL,
    humidity_recorded REAL,
    packaging_integrity INTEGER,
    documentation_complete INTEGER,
    regulatory_status TEXT,
    non_conformance_code TEXT,
    corrective_action_taken TEXT,
    follow_up_date DATE,
    auditor_comments TEXT,
    compliance_score INTEGER,
    risk_level INTEGER,
    shipment_mode TEXT,
    origin_country TEXT,
    destination_facility TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO MedicalSupplyChainCompliance VALUES (101, 2001, 'pharmaceuticals', 'BATCH1234', '2023-03-01', 'JohnDoe', 4.5, 45.0, 1, 1, 'Approved', '', '', '2023-04-01', 'All good', 95, 1, 'air', 'Germany', 'MainWarehouse', '2023-03-01 08:30:00', '2023-03-01 08:30:00');
INSERT INTO MedicalSupplyChainCompliance VALUES (102, 2002, 'disposables', 'BATCH5678', '2023-03-15', 'JaneSmith', 2.0, 50.0, 1, 0, 'Pending', 'DOC001', 'Resubmit paperwork', '2023-04-15', 'Missing COA', 70, 3, 'sea', 'China', 'RegionalClinic', '2023-03-15 09:15:00', '2023-03-15 09:15:00');
INSERT INTO MedicalSupplyChainCompliance VALUES (103, 2003, 'lab_reagents', 'BATCH9012', '2023-04-05', 'MikeLee', 3.8, 48.5, 0, 1, 'Rejected', 'TEMP002', 'Returned to vendor', '2023-05-01', 'Temperature out of range', 45, 4, 'air', 'India', 'ResearchLab', '2023-04-05 10:00:00', '2023-04-05 10:00:00');


-- HospitalFundingGrant: information about grants received by the hospital
CREATE TABLE HospitalFundingGrant (
    grant_id INTEGER PRIMARY KEY,
    grant_name TEXT,
    funding_agency TEXT,
    award_amount REAL,
    award_currency TEXT,
    start_date DATE,
    end_date DATE,
    principal_investigator TEXT,
    department_responsible TEXT,
    grant_type TEXT,
    matching_funds_required INTEGER,
    reporting_frequency TEXT,
    last_report_submitted DATE,
    grant_status TEXT,
    associated_project_code TEXT,
    oversight_committee TEXT,
    budget_line_items TEXT,
    indirect_cost_rate REAL,
    total_expended REAL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO HospitalFundingGrant VALUES (5001, 'CardioInnovation', 'NIH', 2500000, 'USD', '2022-01-01', '2025-12-31', 'DrSmith', 'Cardiology', 'Research', 1, 'Quarterly', '2023-06-30', 'Active', 'PROJ-CARD01', 'GrantCommitteeA', 'Equipment,Staff,Supplies', 0.25, 600000, '2023-01-10 12:00:00', '2023-06-01 09:00:00');
INSERT INTO HospitalFundingGrant VALUES (5002, 'OncoCareExpansion', 'CDC', 1500000, 'USD', '2021-07-01', '2024-06-30', 'DrLee', 'Oncology', 'Infrastructure', 0, 'Annual', '2023-01-15', 'Active', 'PROJ-ONC02', 'GrantCommitteeB', 'Renovation,Equipment', 0.20, 800000, '2022-03-05 08:30:00', '2023-03-05 10:15:00');
INSERT INTO HospitalFundingGrant VALUES (5003, 'CommunityHealthSurvey', 'HRSA', 750000, 'USD', '2023-01-01', '2026-12-31', 'DrPatel', 'PublicHealth', 'Program', 1, 'Semiannual', '2023-07-20', 'Pending', 'PROJ-PUB03', 'GrantCommitteeC', 'Staff,Materials,Travel', 0.15, 100000, '2023-02-20 14:45:00', '2023-07-01 11:20:00');


-- HealthPolicyCitation: records of health policy documents cited in research or reports
CREATE TABLE HealthPolicyCitation (
    citation_id INTEGER PRIMARY KEY,
    policy_title TEXT,
    policy_number TEXT,
    issuing_agency TEXT,
    publication_date DATE,
    version TEXT,
    relevance_score INTEGER,
    cited_by_document TEXT,
    citation_context TEXT,
    page_number INTEGER,
    section_heading TEXT,
    linked_guideline TEXT,
    policy_status TEXT,
    effective_date DATE,
    expiration_date DATE,
    amendment_number INTEGER,
    reviewer TEXT,
    review_date DATE,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO HealthPolicyCitation VALUES (9001, 'NationalVaccinationStrategy', 'NVS-2020', 'USHealthDept', '2020-02-15', 'v1', 88, 'ReportA', 'Background', 12, 'Introduction', 'GuidelineX', 'Active', '2020-03-01', NULL, 0, 'AliceBrown', '2023-05-20', 'Highly relevant', '2023-06-01 09:00:00', '2023-06-01 09:00:00');
INSERT INTO HealthPolicyCitation VALUES (9002, 'MentalHealthAccessPlan', 'MHAP-2019', 'StateHealthAgency', '2019-11-30', 'v2', 73, 'StudyB', 'Methods', 45, 'Methods', 'GuidelineY', 'Active', '2020-01-01', NULL, 1, 'BobGreen', '2023-04-10', 'Moderate relevance', '2023-05-15 10:30:00', '2023-05-15 10:30:00');
INSERT INTO HealthPolicyCitation VALUES (9003, 'EmergencyPreparednessFramework', 'EPF-2018', 'FederalEmergencyMgr', '2018-07-20', 'v3', 65, 'PaperC', 'Discussion', 78, 'Discussion', 'GuidelineZ', 'Superseded', '2018-08-01', '2022-07-31', 2, 'CarolWhite', '2023-03-05', 'Lower relevance after new edition', '2023-04-01 08:45:00', '2023-04-01 08:45:00');


-- MedicalDeviceRecallTracking: tracking of recalled medical devices
CREATE TABLE MedicalDeviceRecallTracking (
    recall_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    manufacturer_name TEXT,
    model_number TEXT,
    recall_reason TEXT,
    recall_initiated_date DATE,
    FDA_notification_date DATE,
    affected_units INTEGER,
    corrective_action TEXT,
    status TEXT,
    distribution_scope TEXT,
    notified_hospitals INTEGER,
    replacement_available INTEGER,
    replacement_model TEXT,
    estimated_resolution_date DATE,
    root_cause_analysis TEXT,
    risk_classification TEXT,
    post_market_surveillance INTEGER,
    documentation_link TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO MedicalDeviceRecallTracking VALUES (3001, 40001, 'MedTechCorp', 'MT-200', 'Battery overheating', '2023-02-10', '2023-02-12', 1500, 'Device replacement', 'Open', 'National', 120, 1, 'MT-200R', '2023-12-31', 'Design flaw in battery pack', 'Class II', 1, 'http://recalls.example.com/3001', '2023-02-11 07:00:00', '2023-06-01 09:30:00');
INSERT INTO MedicalDeviceRecallTracking VALUES (3002, 40002, 'HealthDevicesInc', 'HDI-450', 'Sterilization failure', '2022-11-05', '2022-11-07', 800, 'Enhanced sterilization protocol', 'Closed', 'Regional', 45, 0, NULL, '2023-03-15', 'Inadequate validation testing', 'Class I', 0, 'http://recalls.example.com/3002', '2022-11-06 10:20:00', '2023-02-20 14:10:00');
INSERT INTO MedicalDeviceRecallTracking VALUES (3003, 40003, 'BioMed Solutions', 'BMS-780', 'Software vulnerability', '2023-05-01', '2023-05-03', 2500, 'Software patch deployment', 'Open', 'International', 300, 1, 'BMS-780v2', '2024-01-15', 'Unpatched security flaw', 'Class III', 1, 'http://recalls.example.com/3003', '2023-05-02 08:45:00', '2023-07-10 11:00:00');


-- PatientMobilitySupportProgram: programs to assist patient mobility
CREATE TABLE PatientMobilitySupportProgram (
    program_id INTEGER PRIMARY KEY,
    program_name TEXT,
    start_date DATE,
    end_date DATE,
    target_population TEXT,
    eligibility_criteria TEXT,
    weekly_sessions INTEGER,
    session_duration_minutes INTEGER,
    therapist_assigned TEXT,
    equipment_provided TEXT,
    transportation_assistance INTEGER,
    insurance_coverage BOOLEAN,
    enrollment_limit INTEGER,
    current_enrollment INTEGER,
    program_status TEXT,
    outcome_measure TEXT,
    average_improvement_score REAL,
    follow_up_duration_months INTEGER,
    funding_source TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO PatientMobilitySupportProgram VALUES (7001, 'BalanceBoost', '2023-01-01', NULL, 'Elderly', 'Age>65', 3, 60, 'TherapistA', 'Walker,GrabBars', 1, 1, 200, 150, 'Active', 'FallRiskScore', 12.5, 6, 'GrantA', '2023-01-01 09:00:00', '2023-06-01 10:00:00');
INSERT INTO PatientMobilitySupportProgram VALUES (7002, 'PostOpRecovery', '2022-06-15', '2024-06-14', 'PostSurgery', 'SurgeryWithin30Days', 5, 45, 'TherapistB', 'Crutches,WalkingFrame', 0, 1, 100, 80, 'Active', 'MobilityScale', 15.2, 12, 'HospitalFund', '2022-06-15 08:30:00', '2023-05-20 11:15:00');
INSERT INTO PatientMobilitySupportProgram VALUES (7003, 'PediatricPlayFit', '2021-09-01', NULL, 'Children', 'Age0-12', 2, 30, 'TherapistC', 'BalancePad', 1, 0, 150, 120, 'Active', 'MotorSkillsScore', 9.8, 3, 'CommunityGrant', '2021-09-01 07:45:00', '2023-07-05 09:20:00');


-- ResearchDataCurationLog: logs of data curation activities for research datasets
CREATE TABLE ResearchDataCurationLog (
    curation_id INTEGER PRIMARY KEY,
    dataset_id INTEGER,
    dataset_name TEXT,
    curator_name TEXT,
    curation_start DATE,
    curation_end DATE,
    records_reviewed INTEGER,
    issues_found INTEGER,
    issues_resolved INTEGER,
    data_quality_score REAL,
    validation_passed BOOLEAN,
    metadata_updated BOOLEAN,
    provenance_added BOOLEAN,
    access_level_changed BOOLEAN,
    compliance_checked BOOLEAN,
    notes TEXT,
    version_number INTEGER,
    change_summary TEXT,
    approval_status TEXT,
    approved_by TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO ResearchDataCurationLog VALUES (1101, 90001, 'GenomicsStudy2022', 'AliceM', '2023-04-01', '2023-04-15', 50000, 120, 115, 92.3, 1, 1, 1, 0, 1, 'All critical issues fixed', 3, 'Added missing fields, corrected IDs', 'Approved', 'DrJones', '2023-04-16 09:00:00', '2023-04-16 09:00:00');
INSERT INTO ResearchDataCurationLog VALUES (1102, 90002, 'ClinicalTrialDataA', 'BobK', '2023-05-05', '2023-05-20', 75000, 200, 190, 88.7, 0, 1, 1, 1, 1, 'Pending final QA', 2, 'Standardized date formats', 'Pending', NULL, '2023-05-21 10:15:00', '2023-05-21 10:15:00');
INSERT INTO ResearchDataCurationLog VALUES (1103, 90003, 'ImagingArchiveX', 'CarolS', '2023-06-10', '2023-06-25', 120000, 80, 80, 95.0, 1, 1, 1, 1, 1, 'Dataset ready for release', 5, 'Compressed images, added DICOM tags', 'Approved', 'DrLee', '2023-06-26 08:45:00', '2023-06-26 08:45:00');


-- HospitalEnergyEfficiencyProject: projects aimed at improving hospital energy usage
CREATE TABLE HospitalEnergyEfficiencyProject (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT,
    start_date DATE,
    end_date DATE,
    objective TEXT,
    baseline_energy_kwh INTEGER,
    projected_savings_kwh INTEGER,
    estimated_cost_usd REAL,
    actual_cost_usd REAL,
    funding_source TEXT,
    project_manager TEXT,
    contractor TEXT,
    equipment_replaced TEXT,
    insulation_upgraded BOOLEAN,
    hvac_system_upgraded BOOLEAN,
    lighting_system_upgraded BOOLEAN,
    renewable_energy_installed BOOLEAN,
    expected_roi_years REAL,
    status TEXT,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO HospitalEnergyEfficiencyProject VALUES (2101, 'LEDLightingUpgrade', '2022-01-15', '2022-07-30', 'Reduce lighting energy', 1200000, 250000, 300000, 295000, 'GreenGrant', 'EmilyR', 'EcoLightingCo', 'LED Fixtures', 0, 0, 1, 0, 1.2, 'Completed', 'Achieved 98% of projected savings', '2022-01-15 08:00:00', '2022-08-01 09:30:00');
INSERT INTO HospitalEnergyEfficiencyProject VALUES (2102, 'HVACModernization', '2023-03-01', NULL, 'Improve HVAC efficiency', 2500000, 600000, 800000, NULL, 'CapitalFund', 'JamesT', 'HVACExperts', 'Variable Speed Fans', 0, 1, 0, 0, 2.5, 'InProgress', 'Phase 1 completed, Phase 2 pending', '2023-03-01 09:15:00', '2023-07-15 10:45:00');
INSERT INTO HospitalEnergyEfficiencyProject VALUES (2103, 'SolarPanelInstallation', '2021-05-10', '2022-02-20', 'Add renewable generation', 1800000, 900000, 950000, 940000, 'RenewableFund', 'LauraM', 'SunPowerInc', 'Solar Panels', 0, 0, 0, 1, 4.0, 'Completed', 'Generated 15% of total load', '2021-05-10 07:30:00', '2022-02-25 11:00:00');


-- MedicalImagingQualityAssurance: QA records for imaging modalities
CREATE TABLE MedicalImagingQualityAssurance (
    qa_id INTEGER PRIMARY KEY,
    imaging_modality TEXT,
    device_id INTEGER,
    test_date DATE,
    technologist_name TEXT,
    phantom_type TEXT,
    snr REAL,
    uniformity_percent REAL,
    spatial_resolution_mm REAL,
    contrast_detail REAL,
    noise_level REAL,
    passed BOOLEAN,
    corrective_action TEXT,
    retest_required BOOLEAN,
    retest_date DATE,
    comments TEXT,
    compliance_standard TEXT,
    auditor_name TEXT,
    audit_score INTEGER,
    status TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO MedicalImagingQualityAssurance VALUES (4001, 'CT', 501, '2023-04-12', 'TomTech', 'CTPhantom', 45.2, 96.5, 0.5, 1.2, 0.8, 1, '', 0, NULL, 'All metrics within limits', 'AAPM', 'SarahK', 92, 'Passed', '2023-04-12 08:30:00', '2023-04-12 08:30:00');
INSERT INTO MedicalImagingQualityAssurance VALUES (4002, 'MRI', 502, '2023-05-20', 'AnnaTech', 'MRIPhantom', 38.0, 92.0, 0.8, 1.0, 1.1, 0, 'Adjusted coil tuning', 1, '2023-06-05', 'Initial failure on uniformity', 'ISO9001', 'MikeL', 78, 'RetestScheduled', '2023-05-20 09:45:00', '2023-05-20 09:45:00');
INSERT INTO MedicalImagingQualityAssurance VALUES (4003, 'Ultrasound', 503, '2023-03-15', 'LiuTech', 'USPhantom', 30.5, 88.0, 1.2, 0.9, 1.5, 1, '', 0, NULL, 'Performance acceptable', 'AHRQ', 'NinaP', 85, 'Passed', '2023-03-15 07:20:00', '2023-03-15 07:20:00');


-- ClinicalGuidelineReviewCommittee: committee responsible for reviewing clinical guidelines
CREATE TABLE ClinicalGuidelineReviewCommittee (
    committee_id INTEGER PRIMARY KEY,
    committee_name TEXT,
    convene_date DATE,
    next_meeting_date DATE,
    chairperson TEXT,
    member_count INTEGER,
    specialty_focus TEXT,
    guidelines_under_review TEXT,
    review_status TEXT,
    consensus_reached BOOLEAN,
    votes_for INTEGER,
    votes_against INTEGER,
    abstentions INTEGER,
    meeting_minutes TEXT,
    action_items TEXT,
    urgency_level INTEGER,
    risk_assessment TEXT,
    external_consultant TEXT,
    budget_usd REAL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO ClinicalGuidelineReviewCommittee VALUES (6001, 'InfectionControlCommittee', '2023-01-10', '2023-07-10', 'DrWhite', 12, 'InfectionControl', 'HandHygieneGuideline', 'InProgress', 0, 0, 0, 0, 'Initial discussion, data collection pending', 'Gather surveillance data', 2, 'Moderate', 'DrGrey', 50000, '2023-01-10 09:00:00', '2023-01-10 09:00:00');
INSERT INTO ClinicalGuidelineReviewCommittee VALUES (6002, 'CardiologyGuidelineCommittee', '2022-05-05', '2023-05-05', 'DrBlack', 15, 'Cardiology', 'AcuteCoronarySyndromeGuideline', 'Completed', 1, 13, 1, 1, 'Approved with minor edits', 'Publish and disseminate', 1, 'Low', NULL, 75000, '2022-05-05 08:30:00', '2022-05-05 08:30:00');
INSERT INTO ClinicalGuidelineReviewCommittee VALUES (6003, 'PediatricNutritionCommittee', '2023-03-20', '2023-09-20', 'DrGreen', 10, 'Pediatrics', 'InfantFeedingGuideline', 'Draft', 0, 0, 0, 0, 'Draft circulated for comments', 'Collect stakeholder feedback', 3, 'High', 'DrBlue', 30000, '2023-03-20 10:15:00', '2023-03-20 10:15:00');