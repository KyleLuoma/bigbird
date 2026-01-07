-- Trackside fan engagement details
CREATE TABLE trackside_fan_engagement
(
    engagementId      INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId            INTEGER,
    fanId             INTEGER,
    interactionType   TEXT,
    interactionDetail TEXT,
    timestamp         TEXT,
    locationSection   TEXT,
    deviceType        TEXT,
    durationSec       INTEGER,
    sentimentScore    REAL,
    mediaCaptured     TEXT,
    socialShareFlag   INTEGER,
    engagementScore   REAL,
    weatherCondition  TEXT,
    temperatureC      REAL,
    humidityPercent   REAL,
    noiseLevelDb      REAL,
    crowdDensity      INTEGER,
    staffSupervisor   TEXT,
    notes             TEXT,
    recordedBy        TEXT
);

INSERT INTO trackside_fan_engagement (engagementId, raceId, fanId, interactionType, interactionDetail, timestamp, locationSection, deviceType, durationSec, sentimentScore, mediaCaptured, socialShareFlag, engagementScore, weatherCondition, temperatureC, humidityPercent, noiseLevelDb, crowdDensity, staffSupervisor, notes, recordedBy)
VALUES (1, 2023, 1001, 'cheer', 'wave_flag', '2023-07-21T14:32:00', 'grandstand_A', 'mobile', 30, 0.85, 'video_clip1', 1, 78.5, 'sunny', 28.5, 45, 72, 1500, 'john_doe', 'none', 'alice_smith');

INSERT INTO trackside_fan_engagement (engagementId, raceId, fanId, interactionType, interactionDetail, timestamp, locationSection, deviceType, durationSec, sentimentScore, mediaCaptured, socialShareFlag, engagementScore, weatherCondition, temperatureC, humidityPercent, noiseLevelDb, crowdDensity, staffSupervisor, notes, recordedBy)
VALUES (2, 2023, 1002, 'photo', 'selfie_with_car', '2023-07-21T15:10:00', 'pit_lane', 'camera', 45, 0.92, 'photo1', 0, 84.3, 'cloudy', 27.0, 50, 68, 1300, 'mary_jane', 'good lighting', 'bob_clark');

INSERT INTO trackside_fan_engagement (engagementId, raceId, fanId, interactionType, interactionDetail, timestamp, locationSection, deviceType, durationSec, sentimentScore, mediaCaptured, socialShareFlag, engagementScore, weatherCondition, temperatureC, humidityPercent, noiseLevelDb, crowdDensity, staffSupervisor, notes, recordedBy)
VALUES (3, 2023, 1003, 'survey', 'post_race_feedback', '2023-07-21T16:45:00', 'hospitality_suite', 'tablet', 120, 0.78, 'survey_data', 1, 70.1, 'rainy', 22.3, 80, 85, 900, 'susan_lee', 'slow response', 'carol_wang');

-- Circuit power grid information
CREATE TABLE circuit_power_grid
(
    gridId                INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId             INTEGER,
    gridOperator          TEXT,
    voltageLevelKv        REAL,
    capacityMw            REAL,
    substationName        TEXT,
    installationDate      TEXT,
    lastMaintenanceDate   TEXT,
    gridStatus            TEXT,
    faultCount            INTEGER,
    averageLoadMw         REAL,
    peakLoadMw            REAL,
    renewablePercentage   REAL,
    backupGeneratorCount  INTEGER,
    smartMeterInstalled   INTEGER,
    gridAreaSqKm          REAL,
    maintenanceVendor     TEXT,
    contractExpiryDate    TEXT,
    energyLossPercent     REAL,
    regulatoryCompliance  TEXT,
    notes                 TEXT,
    createdBy             TEXT
);

INSERT INTO circuit_power_grid (gridId, circuitId, gridOperator, voltageLevelKv, capacityMw, substationName, installationDate, lastMaintenanceDate, gridStatus, faultCount, averageLoadMw, peakLoadMw, renewablePercentage, backupGeneratorCount, smartMeterInstalled, gridAreaSqKm, maintenanceVendor, contractExpiryDate, energyLossPercent, regulatoryCompliance, notes, createdBy)
VALUES (1, 1, 'gridcorp', 33.0, 120.5, 'main_sub_1', '2015-03-12', '2023-02-20', 'operational', 2, 85.3, 115.0, 40.5, 2, 1, 1.8, 'electro_maint', '2025-12-31', 4.2, 'compliant', 'recent upgrade', 'admin_user');

INSERT INTO circuit_power_grid (gridId, circuitId, gridOperator, voltageLevelKv, capacityMw, substationName, installationDate, lastMaintenanceDate, gridStatus, faultCount, averageLoadMw, peakLoadMw, renewablePercentage, backupGeneratorCount, smartMeterInstalled, gridAreaSqKm, maintenanceVendor, contractExpiryDate, energyLossPercent, regulatoryCompliance, notes, createdBy)
VALUES (2, 2, 'energynet', 22.0, 95.0, 'sub_north', '2017-07-08', '2022-11-15', 'operational', 0, 70.0, 90.0, 55.0, 1, 1, 2.3, 'gridcare', '2024-06-30', 3.8, 'compliant', 'no issues', 'system_admin');

INSERT INTO circuit_power_grid (gridId, circuitId, gridOperator, voltageLevelKv, capacityMw, substationName, installationDate, lastMaintenanceDate, gridStatus, faultCount, averageLoadMw, peakLoadMw, renewablePercentage, backupGeneratorCount, smartMeterInstalled, gridAreaSqKm, maintenanceVendor, contractExpiryDate, energyLossPercent, regulatoryCompliance, notes, createdBy)
VALUES (3, 3, 'powerplus', 11.0, 60.0, 'south_sub', '2020-01-20', '2023-08-05', 'operational', 1, 45.5, 58.0, 30.0, 0, 0, 1.2, 'maintinc', '2026-03-31', 5.1, 'pending', 'scheduled upgrade', 'tech_lead');

-- Driver legacy career records
CREATE TABLE driver_legacy_career
(
    legacyId            INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId            INTEGER,
    careerStartYear     INTEGER,
    careerEndYear       INTEGER,
    totalRaces          INTEGER,
    totalWins           INTEGER,
    totalPodiums        INTEGER,
    totalPoints         REAL,
    championshipsWon    INTEGER,
    nickName            TEXT,
    hometown            TEXT,
    firstTeamId         INTEGER,
    lastTeamId          INTEGER,
    retirementReason    TEXT,
    postRetirementRole  TEXT,
    biographyLink       TEXT,
    hallOfFameInd      INTEGER,
    mediaAppearances    INTEGER,
    charityInvolvement  TEXT,
    legacyScore         REAL
);

INSERT INTO driver_legacy_career (legacyId, driverId, careerStartYear, careerEndYear, totalRaces, totalWins, totalPodiums, totalPoints, championshipsWon, nickName, hometown, firstTeamId, lastTeamId, retirementReason, postRetirementRole, biographyLink, hallOfFameInd, mediaAppearances, charityInvolvement, legacyScore)
VALUES (1, 1, 1995, 2008, 210, 48, 98, 645.5, 3, 'speedster', 'london', 10, 25, 'injury', 'team_management', 'http://example.com/driver1', 1, 120, 'children_hospitals', 92.3);

INSERT INTO driver_legacy_career (legacyId, driverId, careerStartYear, careerEndYear, totalRaces, totalWins, totalPodiums, totalPoints, championshipsWon, nickName, hometown, firstTeamId, lastTeamId, retirementReason, postRetirementRole, biographyLink, hallOfFameInd, mediaAppearances, charityInvolvement, legacyScore)
VALUES (2, 2, 2000, 2015, 180, 30, 70, 512.0, 1, 'the_rocket', 'milan', 12, 30, 'personal', 'commentator', 'http://example.com/driver2', 0, 85, 'environmental', 78.1);

INSERT INTO driver_legacy_career (legacyId, driverId, careerStartYear, careerEndYear, totalRaces, totalWins, totalPodiums, totalPoints, championshipsWon, nickName, hometown, firstTeamId, lastTeamId, retirementReason, postRetirementRole, biographyLink, hallOfFameInd, mediaAppearances, charityInvolvement, legacyScore)
VALUES (3, 3, 2010, 2023, 150, 22, 55, 398.2, 0, 'quietstorm', 'sydney', 14, 35, 'retired', 'coach', 'http://example.com/driver3', 0, 40, 'education', 65.4);

-- Broadcast advertising spot inventory
CREATE TABLE broadcast_ad_spot_inventory
(
    adSpotId            INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId              INTEGER,
    network             TEXT,
    adDurationSec       INTEGER,
    slotTime            TEXT,
    productCategory     TEXT,
    brandName           TEXT,
    campaignName        TEXT,
    costUsd             REAL,
    impressions         INTEGER,
    clickThroughRate    REAL,
    adCreativeVersion   TEXT,
    targetAudience      TEXT,
    region              TEXT,
    broadcastDate       TEXT,
    verifiedFlag        INTEGER,
    creativeAgency      TEXT,
    contractNumber      TEXT,
    notes               TEXT,
    createdBy           TEXT,
    status              TEXT
);

INSERT INTO broadcast_ad_spot_inventory (adSpotId, raceId, network, adDurationSec, slotTime, productCategory, brandName, campaignName, costUsd, impressions, clickThroughRate, adCreativeVersion, targetAudience, region, broadcastDate, verifiedFlag, creativeAgency, contractNumber, notes, createdBy, status)
VALUES (1, 2023, 'sportsnet', 30, 'pre_race', 'automotive', 'speedx', 'spring_launch', 25000.0, 500000, 0.012, 'v1', 'adults', 'europe', '2023-07-20', 1, 'adcreatives', 'CN001', 'prime_spot', 'john_admin', 'active');

INSERT INTO broadcast_ad_spot_inventory (adSpotId, raceId, network, adDurationSec, slotTime, productCategory, brandName, campaignName, costUsd, impressions, clickThroughRate, adCreativeVersion, targetAudience, region, broadcastDate, verifiedFlag, creativeAgency, contractNumber, notes, createdBy, status)
VALUES (2, 2023, 'global_tv', 45, 'mid_race', 'beverages', 'fizzup', 'summer_refresh', 40000.0, 750000, 0.018, 'v2', 'young_adults', 'asia', '2023-07-21', 1, 'mediahouse', 'CN002', 'high_viewership', 'alice_ops', 'active');

INSERT INTO broadcast_ad_spot_inventory (adSpotId, raceId, network, adDurationSec, slotTime, productCategory, brandName, campaignName, costUsd, impressions, clickThroughRate, adCreativeVersion, targetAudience, region, broadcastDate, verifiedFlag, creativeAgency, contractNumber, notes, createdBy, status)
VALUES (3, 2023, 'fastchannel', 60, 'post_race', 'technology', 'bytegear', 'innovation_series', 60000.0, 900000, 0.022, 'v3', 'tech_enthusiasts', 'north_america', '2023-07-22', 1, 'creativelab', 'CN003', 'premium_position', 'mike_ops', 'active');

-- Sponsor product placement log
CREATE TABLE sponsor_product_placement_log
(
    placementId          INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId              INTEGER,
    sponsorId            INTEGER,
    productName          TEXT,
    placementType        TEXT,
    locationDetail       TEXT,
    durationSec          INTEGER,
    visibilityScore      REAL,
    audienceReach        INTEGER,
    brandRecallScore     REAL,
    campaignStartDate    TEXT,
    campaignEndDate      TEXT,
    contractValueUsd     REAL,
    approvalStatus       TEXT,
    creativeAssetLink    TEXT,
    measurementMethod    TEXT,
    notes                TEXT,
    createdBy            TEXT,
    lastUpdated          TEXT,
    status               TEXT,
    region               TEXT,
    category             TEXT
);

INSERT INTO sponsor_product_placement_log (placementId, eventId, sponsorId, productName, placementType, locationDetail, durationSec, visibilityScore, audienceReach, brandRecallScore, campaignStartDate, campaignEndDate, contractValueUsd, approvalStatus, creativeAssetLink, measurementMethod, notes, createdBy, lastUpdated, status, region, category)
VALUES (1, 2023, 101, 'speedo_tyre', 'trackside_banner', 'turn_3_left', 120, 88.5, 300000, 75.2, '2023-06-01', '2023-07-31', 150000.0, 'approved', 'http://assets.com/tyre_banner', 'view_count', 'high_visibility', 'susan_admin', '2023-07-15', 'active', 'europe', 'automotive');

INSERT INTO sponsor_product_placement_log (placementId, eventId, sponsorId, productName, placementType, locationDetail, durationSec, visibilityScore, audienceReach, brandRecallScore, campaignStartDate, campaignEndDate, contractValueUsd, approvalStatus, creativeAssetLink, measurementMethod, notes, createdBy, lastUpdated, status, region, category)
VALUES (2, 2023, 102, 'frost_beer', 'hospitality_kiosk', 'vip_lounge', 180, 92.0, 150000, 81.5, '2023-05-15', '2023-08-15', 120000.0, 'pending', 'http://assets.com/beer_kiosk', 'survey', 'awaiting_approval', 'bob_ops', '2023-07-10', 'pending', 'north_america', 'beverages');

INSERT INTO sponsor_product_placement_log (placementId, eventId, sponsorId, productName, placementType, locationDetail, durationSec, visibilityScore, audienceReach, brandRecallScore, campaignStartDate, campaignEndDate, contractValueUsd, approvalStatus, creativeAssetLink, measurementMethod, notes, createdBy, lastUpdated, status, region, category)
VALUES (3, 2023, 103, 'tech_smartwatch', 'digital_overlay', 'broadcast_screen', 60, 85.0, 500000, 68.4, '2023-07-01', '2023-07-31', 200000.0, 'approved', 'http://assets.com/smartwatch_overlay', 'impression', 'integrated_with_live_feed', 'carol_admin', '2023-07-18', 'active', 'asia', 'technology');

-- Medical incident reports
CREATE TABLE medical_incident_reports
(
    incidentId           INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId               INTEGER,
    staffId              INTEGER,
    incidentType         TEXT,
    severityLevel        INTEGER,
    description          TEXT,
    timestamp            TEXT,
    locationSection      TEXT,
    patientId            INTEGER,
    treatmentProvided    TEXT,
    recoveryTimeMin      INTEGER,
    followUpRequired     INTEGER,
    reportingOfficer     TEXT,
    status               TEXT,
    notes                TEXT,
    createdBy            TEXT,
    updatedBy            TEXT,
    resolutionDate       TEXT,
    incidentCode         TEXT,
    privacyFlag          INTEGER
);

INSERT INTO medical_incident_reports (incidentId, raceId, staffId, incidentType, severityLevel, description, timestamp, locationSection, patientId, treatmentProvided, recoveryTimeMin, followUpRequired, reportingOfficer, status, notes, createdBy, updatedBy, resolutionDate, incidentCode, privacyFlag)
VALUES (1, 2023, 501, 'heat_exhaustion', 2, 'driver showed signs of dehydration', '2023-07-21T14:15:00', 'pit_lane', 1001, 'IV_fluids', 45, 1, 'dr_smith', 'open', 'monitor_vitals', 'alice_admin', 'bob_ops', '2023-07-22', 'INC001', 0);

INSERT INTO medical_incident_reports (incidentId, raceId, staffId, incidentType, severityLevel, description, timestamp, locationSection, patientId, treatmentProvided, recoveryTimeMin, followUpRequired, reportingOfficer, status, notes, createdBy, updatedBy, resolutionDate, incidentCode, privacyFlag)
VALUES (2, 2023, 502, 'minor_trauma', 1, 'spectator sprained ankle', '2023-07-21T15:30:00', 'grandstand_B', 2002, 'bandage', 15, 0, 'dr_jones', 'closed', 'no_complications', 'carol_admin', 'dave_ops', '2023-07-21', 'INC002', 0);

INSERT INTO medical_incident_reports (incidentId, raceId, staffId, incidentType, severityLevel, description, timestamp, locationSection, patientId, treatmentProvided, recoveryTimeMin, followUpRequired, reportingOfficer, status, notes, createdBy, updatedBy, resolutionDate, incidentCode, privacyFlag)
VALUES (3, 2023, 503, 'allergic_reaction', 3, 'crew member allergic to latex', '2023-07-21T16:05:00', 'hospitality_suite', 3003, 'epinephrine', 5, 0, 'dr_lee', 'closed', 'treated_successfully', 'dave_admin', 'eve_ops', '2023-07-21', 'INC003', 1);

-- Race environmental sensor logs
CREATE TABLE race_environmental_sensor_logs
(
    sensorLogId          INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId               INTEGER,
    sensorId             INTEGER,
    sensorType           TEXT,
    readingValue         REAL,
    unit                 TEXT,
    timestamp            TEXT,
    latitude             REAL,
    longitude            REAL,
    batteryLevelPercent  INTEGER,
    signalStrengthDb    INTEGER,
    calibrationDate      TEXT,
    maintenanceFlag      INTEGER,
    anomalyDetected      INTEGER,
    notes                TEXT,
    recordedBy           TEXT,
    environmentalZone    TEXT,
    temperatureC         REAL,
    humidityPercent      REAL,
    airQualityIndex      INTEGER,
    windSpeedKph         REAL
);

INSERT INTO race_environmental_sensor_logs (sensorLogId, raceId, sensorId, sensorType, readingValue, unit, timestamp, latitude, longitude, batteryLevelPercent, signalStrengthDb, calibrationDate, maintenanceFlag, anomalyDetected, notes, recordedBy, environmentalZone, temperatureC, humidityPercent, airQualityIndex, windSpeedKph)
VALUES (1, 2023, 9001, 'temperature', 27.5, 'C', '2023-07-21T14:00:00', 48.8566, 2.3522, 95, -70, '2023-01-15', 0, 0, 'normal', 'sensor_tech1', 'track_center', 27.5, 45, 35, 12.3);

INSERT INTO race_environmental_sensor_logs (sensorLogId, raceId, sensorId, sensorType, readingValue, unit, timestamp, latitude, longitude, batteryLevelPercent, signalStrengthDb, calibrationDate, maintenanceFlag, anomalyDetected, notes, recordedBy, environmentalZone, temperatureC, humidityPercent, airQualityIndex, windSpeedKph)
VALUES (2, 2023, 9002, 'humidity', 58.0, '%', '2023-07-21T14:05:00', 48.8570, 2.3525, 93, -68, '2023-02-10', 0, 0, 'stable', 'sensor_tech2', 'pit_lane', 26.8, 58, 40, 11.0);

INSERT INTO race_environmental_sensor_logs (sensorLogId, raceId, sensorId, sensorType, readingValue, unit, timestamp, latitude, longitude, batteryLevelPercent, signalStrengthDb, calibrationDate, maintenanceFlag, anomalyDetected, notes, recordedBy, environmentalZone, temperatureC, humidityPercent, airQualityIndex, windSpeedKph)
VALUES (3, 2023, 9003, 'air_quality', 42, 'AQI', '2023-07-21T14:10:00', 48.8568, 2.3523, 90, -65, '2023-03-05', 0, 1, 'spike_detected', 'sensor_tech3', 'grandstand_A', 27.0, 47, 42, 13.2);

-- Venue energy storage units
CREATE TABLE venue_energy_storage_units
(
    storageUnitId        INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId              INTEGER,
    unitType             TEXT,
    capacityMwh          REAL,
    currentLevelMwh      REAL,
    manufacturer         TEXT,
    installationDate     TEXT,
    lastInspectionDate   TEXT,
    status               TEXT,
    maxDischargeRateMw   REAL,
    minChargeRateMw      REAL,
    operationalSinceYear INTEGER,
    gridConnectionId     INTEGER,
    maintenanceVendor    TEXT,
    contractEndDate      TEXT,
    efficiencyPercent    REAL,
    safetyCertification  TEXT,
    notes                TEXT,
    createdBy            TEXT,
    updatedBy            TEXT,
    locationSection      TEXT,
    temperatureC         REAL
);

INSERT INTO venue_energy_storage_units (storageUnitId, venueId, unitType, capacityMwh, currentLevelMwh, manufacturer, installationDate, lastInspectionDate, status, maxDischargeRateMw, minChargeRateMw, operationalSinceYear, gridConnectionId, maintenanceVendor, contractEndDate, efficiencyPercent, safetyCertification, notes, createdBy, updatedBy, locationSection, temperatureC)
VALUES (1, 10, 'lithium_ion', 5.0, 3.2, 'energysys', '2020-04-10', '2023-06-20', 'operational', 2.5, 1.0, 2020, 2001, 'maint_co', '2025-12-31', 92.5, 'iso_9001', 'no_issues', 'admin_user', 'tech_user', 'north_wing', 22.3);

INSERT INTO venue_energy_storage_units (storageUnitId, venueId, unitType, capacityMwh, currentLevelMwh, manufacturer, installationDate, lastInspectionDate, status, maxDischargeRateMw, minChargeRateMw, operationalSinceYear, gridConnectionId, maintenanceVendor, contractEndDate, efficiencyPercent, safetyCertification, notes, createdBy, updatedBy, locationSection, temperatureC)
VALUES (2, 11, 'flow_battery', 8.5, 6.0, 'flowtech', '2019-08-15', '2023-05-10', 'operational', 3.0, 1.2, 2019, 2002, 'maint_plus', '2026-03-31', 88.0, 'iso_14001', 'regular_maintenance', 'ops_admin', 'field_user', 'south_east', 19.8);

INSERT INTO venue_energy_storage_units (storageUnitId, venueId, unitType, capacityMwh, currentLevelMwh, manufacturer, installationDate, lastInspectionDate, status, maxDischargeRateMw, minChargeRateMw, operationalSinceYear, gridConnectionId, maintenanceVendor, contractEndDate, efficiencyPercent, safetyCertification, notes, createdBy, updatedBy, locationSection, temperatureC)
VALUES (3, 12, 'solid_state', 3.2, 2.5, 'solidify', '2021-01-20', '2023-07-01', 'operational', 1.8, 0.9, 2021, 2003, 'maint_pro', '2027-11-30', 95.0, 'iso_45001', 'new_installation', 'energy_admin', 'sys_user', 'central_hub', 21.0);

-- Team aerodynamics simulation runs
CREATE TABLE team_aerodynamics_simulation_runs
(
    simulationRunId      INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId               INTEGER,
    carModel             TEXT,
    simulationSoftware   TEXT,
    runDate              TEXT,
    runTimeSec           INTEGER,
    meshResolution       INTEGER,
    solverType           TEXT,
    airflowSpeedKph      REAL,
    downforceN           REAL,
    dragCoefficient      REAL,
    liftCoefficient      REAL,
    temperatureC         REAL,
    pressurePa           REAL,
    humidityPercent      REAL,
    cpuCoresUsed         INTEGER,
    gpuCoresUsed         INTEGER,
    simulationResultLink TEXT,
    status               TEXT,
    notes                TEXT,
    createdBy            TEXT,
    validatedFlag        INTEGER
);

INSERT INTO team_aerodynamics_simulation_runs (simulationRunId, teamId, carModel, simulationSoftware, runDate, runTimeSec, meshResolution, solverType, airflowSpeedKph, downforceN, dragCoefficient, liftCoefficient, temperatureC, pressurePa, humidityPercent, cpuCoresUsed, gpuCoresUsed, simulationResultLink, status, notes, createdBy, validatedFlag)
VALUES (1, 20, 'model_X', 'CFD_Pro', '2023-06-15', 7200, 3000000, 'steady_state', 300.0, 2500.0, 0.32, -0.05, 22.0, 101325, 45, 32, 8, 'http://results.com/run1', 'completed', 'baseline_run', 'engineer_a', 1);

INSERT INTO team_aerodynamics_simulation_runs (simulationRunId, teamId, carModel, simulationSoftware, runDate, runTimeSec, meshResolution, solverType, airflowSpeedKph, downforceN, dragCoefficient, liftCoefficient, temperatureC, pressurePa, humidityPercent, cpuCoresUsed, gpuCoresUsed, simulationResultLink, status, notes, createdBy, validatedFlag)
VALUES (2, 21, 'model_Y', 'AeroSimX', '2023-06-20', 5400, 2500000, 'transient', 280.0, 2300.0, 0.29, -0.04, 20.5, 100800, 50, 28, 6, 'http://results.com/run2', 'completed', 'adjusted_wing_angle', 'engineer_b', 1);

INSERT INTO team_aerodynamics_simulation_runs (simulationRunId, teamId, carModel, simulationSoftware, runDate, runTimeSec, meshResolution, solverType, airflowSpeedKph, downforceN, dragCoefficient, liftCoefficient, temperatureC, pressurePa, humidityPercent, cpuCoresUsed, gpuCoresUsed, simulationResultLink, status, notes, createdBy, validatedFlag)
VALUES (3, 22, 'model_Z', 'FluentX', '2023-06-25', 6000, 2800000, 'steady_state', 310.0, 2600.0, 0.33, -0.06, 23.0, 101500, 48, 30, 7, 'http://results.com/run3', 'completed', 'new_splitter_design', 'engineer_c', 1);

-- Fan experience loyalty milestones
CREATE TABLE fan_experience_loyalty_milestones
(
    milestoneId          INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId               INTEGER,
    milestoneName       TEXT,
    achievementDate     TEXT,
    pointsEarned        INTEGER,
    tierLevel           TEXT,
    rewardRedeemed      INTEGER,
    rewardCode          TEXT,
    eventAssociated     TEXT,
    locationSection     TEXT,
    notes               TEXT,
    status              TEXT,
    createdBy           TEXT,
    updatedBy           TEXT,
    verificationDate    TEXT,
    category            TEXT,
    sequenceNumber      INTEGER,
    expiryDate          TEXT,
    bonusMultiplier     REAL,
    engagementScore     REAL,
    campaignId          INTEGER
);

INSERT INTO fan_experience_loyalty_milestones (milestoneId, fanId, milestoneName, achievementDate, pointsEarned, tierLevel, rewardRedeemed, rewardCode, eventAssociated, locationSection, notes, status, createdBy, updatedBy, verificationDate, category, sequenceNumber, expiryDate, bonusMultiplier, engagementScore, campaignId)
VALUES (1, 1001, 'first_race_attendance', '2023-04-10', 100, 'bronze', 0, 'RWD100', 'GrandPrix_April', 'grandstand_A', 'first_visit', 'active', 'admin_user', 'admin_user', '2023-04-12', 'attendance', 1, '2024-04-10', 1.0, 85.5, 501);

INSERT INTO fan_experience_loyalty_milestones (milestoneId, fanId, milestoneName, achievementDate, pointsEarned, tierLevel, rewardRedeemed, rewardCode, eventAssociated, locationSection, notes, status, createdBy, updatedBy, verificationDate, category, sequenceNumber, expiryDate, bonusMultiplier, engagementScore, campaignId)
VALUES (2, 1002, 'social_share_milestone', '2023-05-20', 250, 'silver', 1, 'RWD250', 'GrandPrix_May', 'hospitality_suite', 'shared_on_twitter', 'active', 'admin_user', 'admin_user', '2023-05-22', 'social', 2, '2024-05-20', 1.2, 92.3, 502);

INSERT INTO fan_experience_loyalty_milestones (milestoneId, fanId, milestoneName, achievementDate, pointsEarned, tierLevel, rewardRedeemed, rewardCode, eventAssociated, locationSection, notes, status, createdBy, updatedBy, verificationDate, category, sequenceNumber, expiryDate, bonusMultiplier, engagementScore, campaignId)
VALUES (3, 1003, 'vip_package_purchase', '2023-06-15', 500, 'gold', 1, 'RWD500', 'GrandPrix_June', 'vip_lounge', 'purchased_vip', 'active', 'admin_user', 'admin_user', '2023-06-16', 'purchase', 3, '2024-06-15', 1.5, 98.0, 503);