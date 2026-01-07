-- Venue Maintenance Requests
CREATE TABLE venue_maintenance_requests (
    requestId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    requestDate DATE,
    requestType TEXT,
    priorityLevel TEXT,
    submittedBy TEXT,
    contactPhone TEXT,
    issueDescription TEXT,
    assignedTo TEXT,
    scheduledStart DATE,
    scheduledEnd DATE,
    status TEXT,
    resolutionNotes TEXT,
    costEstimate REAL,
    actualCost REAL,
    partsRequired TEXT,
    vendorId INTEGER,
    inspectionRequired TEXT,
    safetyClearance TEXT,
    followUpDate DATE,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT,
    category TEXT
);
INSERT INTO venue_maintenance_requests (venueId,requestDate,requestType,priorityLevel,submittedBy,contactPhone,issueDescription,assignedTo,scheduledStart,scheduledEnd,status,costEstimate,actualCost,partsRequired,vendorId,inspectionRequired,safetyClearance,followUpDate,createdAt,updatedAt,notes,category) VALUES (101,'2025-03-12','HVAC','High','John Doe','5551234','Air conditioning not cooling','Mike Smith','2025-03-15','2025-03-16','Open',2500.00,0.00,'Filter,Coolant',12,'Yes','Pending','2025-03-20','2025-03-12 09:00:00','2025-03-12 09:00:00','Awaiting parts','Mechanical');
INSERT INTO venue_maintenance_requests (venueId,requestDate,requestType,priorityLevel,submittedBy,contactPhone,issueDescription,assignedTo,scheduledStart,scheduledEnd,status,costEstimate,actualCost,partsRequired,vendorId,inspectionRequired,safetyClearance,followUpDate,createdAt,updatedAt,notes,category) VALUES (102,'2025-04-01','Electrical','Medium','Alice Green','5555678','Lighting flicker in sector B','Tom Lee','2025-04-05','2025-04-05','Closed',800.00,750.00,'Bulb,Driver',8,'No','Cleared','2025-04-10','2025-04-01 10:30:00','2025-04-05 15:45:00','Replaced faulty driver','Electrical');
INSERT INTO venue_maintenance_requests (venueId,requestDate,requestType,priorityLevel,submittedBy,contactPhone,issueDescription,assignedTo,scheduledStart,scheduledEnd,status,costEstimate,actualCost,partsRequired,vendorId,inspectionRequired,safetyClearance,followUpDate,createdAt,updatedAt,notes,category) VALUES (103,'2025-05-20','Plumbing','Low','Bob White','5559012','Leak under restroom sink','Sara Kim','2025-05-22','2025-05-22','Open',150.00,0.00,'Sealant',5,'Yes','Pending','2025-05-30','2025-05-20 08:15:00','2025-05-20 08:15:00','Awaiting contractor','Plumbing');

-- Audience Survey Responses
CREATE TABLE audience_survey_responses (
    surveyId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    respondentId INTEGER,
    responseDate DATE,
    overallSatisfaction INTEGER,
    trackRating INTEGER,
    facilitiesRating INTEGER,
    foodQualityRating INTEGER,
    staffFriendlinessRating INTEGER,
    likelihoodToReturn INTEGER,
    favoriteSection TEXT,
    leastFavoriteAspect TEXT,
    comments TEXT,
    ageGroup TEXT,
    gender TEXT,
    ticketType TEXT,
    travelMethod TEXT,
    accommodationUsed TEXT,
    timeEntered TEXT,
    timeExited TEXT,
    netPromoterScore INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME,
    deviceUsed TEXT,
    surveyVersion TEXT,
    responseDuration INTEGER
);
INSERT INTO audience_survey_responses (eventId,respondentId,responseDate,overallSatisfaction,trackRating,facilitiesRating,foodQualityRating,staffFriendlinessRating,likelihoodToReturn,favoriteSection,leastFavoriteAspect,comments,ageGroup,gender,ticketType,travelMethod,accommodationUsed,timeEntered,timeExited,netPromoterScore,createdAt,updatedAt,deviceUsed,surveyVersion,responseDuration) VALUES (2001,301,'2025-06-10',9,8,9,7,9,10,'Grandstand','Restroom queues','Great experience','25-34','Male','Premium','Car','Hotel','09:00','17:30',9,'2025-06-10 08:00:00','2025-06-10 08:02:00','Mobile','v1',120);
INSERT INTO audience_survey_responses (eventId,respondentId,responseDate,overallSatisfaction,trackRating,facilitiesRating,foodQualityRating,staffFriendlinessRating,likelihoodToReturn,favoriteSection,leastFavoriteAspect,comments,ageGroup,gender,ticketType,travelMethod,accommodationUsed,timeEntered,timeExited,netPromoterScore,createdAt,updatedAt,deviceUsed,surveyVersion,responseDuration) VALUES (2002,302,'2025-06-12',7,6,7,6,8,7,'General Admission','Parking availability','Good but could improve','35-44','Female','Standard','Public Transport','None','10:15','18:00',6,'2025-06-12 09:30:00','2025-06-12 09:32:00','Tablet','v1',95);
INSERT INTO audience_survey_responses (eventId,respondentId,responseDate,overallSatisfaction,trackRating,facilitiesRating,foodQualityRating,staffFriendlinessRating,likelihoodToReturn,favoriteSection,leastFavoriteAspect,comments,ageGroup,gender,ticketType,travelMethod,accommodationUsed,timeEntered,timeExited,netPromoterScore,createdAt,updatedAt,deviceUsed,surveyVersion,responseDuration) VALUES (2003,303,'2025-06-15',8,8,8,8,9,8,'VIP Lounge','Crowd noise','Enjoyed the exclusive lounge','45-54','Male','VIP','Car','Resort','11:45','20:00',8,'2025-06-15 10:10:00','2025-06-15 10:12:00','Desktop','v1',110);

-- Transportation Fleet Status
CREATE TABLE transportation_fleet_status (
    fleetRecordId INTEGER PRIMARY KEY AUTOINCREMENT,
    fleetId INTEGER,
    recordDate DATE,
    vehicleId TEXT,
    vehicleType TEXT,
    mileage INTEGER,
    fuelLevel REAL,
    oilLevel REAL,
    tirePressure REAL,
    batteryHealth REAL,
    lastServiceDate DATE,
    nextServiceDue DATE,
    driverAssigned TEXT,
    status TEXT,
    locationLatitude REAL,
    locationLongitude REAL,
    temperatureCelsius REAL,
    humidityPercent REAL,
    gpsSignalStrength INTEGER,
    maintenanceNotes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    routeAssigned TEXT,
    cargoWeightKg INTEGER,
    emissionCO2 REAL,
    inspectionPassed TEXT,
    notes TEXT
);
INSERT INTO transportation_fleet_status (fleetId,recordDate,vehicleId,vehicleType,mileage,fuelLevel,oilLevel,tirePressure,batteryHealth,lastServiceDate,nextServiceDue,driverAssigned,status,locationLatitude,locationLongitude,temperatureCelsius,humidityPercent,gpsSignalStrength,maintenanceNotes,createdAt,updatedAt,routeAssigned,cargoWeightKg,emissionCO2,inspectionPassed,notes) VALUES (1,'2025-07-01','VHC001','Truck',120000,75.5,80.2,32.5,92.0,'2025-06-15','2025-12-15','Mike Ortiz','Active',42.3601,-71.0589,22.5,55,4,'Tire rotation completed','2025-07-01 06:00:00','2025-07-01 06:10:00','RouteA',3500,180.5,'Yes','All checks ok');
INSERT INTO transportation_fleet_status (fleetId,recordDate,vehicleId,vehicleType,mileage,fuelLevel,oilLevel,tirePressure,batteryHealth,lastServiceDate,nextServiceDue,driverAssigned,status,locationLatitude,locationLongitude,temperatureCelsius,humidityPercent,gpsSignalStrength,maintenanceNotes,createdAt,updatedAt,routeAssigned,cargoWeightKg,emissionCO2,inspectionPassed,notes) VALUES (2,'2025-07-01','VHC002','Van',80000,60.0,70.0,30.0,85.0,'2025-05-20','2025-11-20','Sara Lee','Idle',34.0522,-118.2437,24.0,48,5,'Oil change due soon','2025-07-01 07:00:00','2025-07-01 07:05:00','RouteB',1200,95.2,'No','Pending service');
INSERT INTO transportation_fleet_status (fleetId,recordDate,vehicleId,vehicleType,mileage,fuelLevel,oilLevel,tirePressure,batteryHealth,lastServiceDate,nextServiceDue,driverAssigned,status,locationLatitude,locationLongitude,temperatureCelsius,humidityPercent,gpsSignalStrength,maintenanceNotes,createdAt,updatedAt,routeAssigned,cargoWeightKg,emissionCO2,inspectionPassed,notes) VALUES (3,'2025-07-01','VHC003','ElectricBus',50000,90.0,0.0,35.0,98.0,'2025-04-10','2025-10-10','Liam Chen','Active',51.5074,-0.1278,20.0,60,3,'Battery health excellent','2025-07-01 08:30:00','2025-07-01 08:35:00','RouteC',0,0.0,'Yes','Ready for service');

-- Sustainability Initiative Tracker
CREATE TABLE sustainability_initiative_tracker (
    initiativeId INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    startDate DATE,
    endDate DATE,
    departmentResponsible TEXT,
    budgetAllocated REAL,
    actualSpending REAL,
    targetReductionPercent REAL,
    currentReductionPercent REAL,
    metricUnit TEXT,
    baselineValue REAL,
    currentValue REAL,
    status TEXT,
    description TEXT,
    verificationMethod TEXT,
    stakeholderEngagementLevel TEXT,
    carbonFootprintTonnes REAL,
    waterSavingsLiters REAL,
    wasteDivertedTonnes REAL,
    renewableEnergyPercent REAL,
    createdAt DATETIME,
    updatedAt DATETIME,
    lastReviewed DATE,
    impactScore INTEGER,
    riskLevel TEXT,
    notes TEXT,
    phase TEXT
);
INSERT INTO sustainability_initiative_tracker (name,startDate,endDate,departmentResponsible,budgetAllocated,actualSpending,targetReductionPercent,currentReductionPercent,metricUnit,baselineValue,currentValue,status,description,verificationMethod,stakeholderEngagementLevel,carbonFootprintTonnes,waterSavingsLiters,wasteDivertedTonnes,renewableEnergyPercent,createdAt,updatedAt,lastReviewed,impactScore,riskLevel,notes,phase) VALUES ('Zero Waste Campaign','2025-01-01','2025-12-31','Operations',500000.00,120000.00,30.0,12.5,'%','100','87','Active','Aim to divert waste from landfill','Third party audit','High',250.0,1500000.0,45.0,20.0,'2025-01-02 09:00:00','2025-06-15 10:30:00','2025-06-15',78,'Medium','Initial rollout','Implementation');
INSERT INTO sustainability_initiative_tracker (name,startDate,endDate,departmentResponsible,budgetAllocated,actualSpending,targetReductionPercent,currentReductionPercent,metricUnit,baselineValue,currentValue,status,description,verificationMethod,stakeholderEngagementLevel,carbonFootprintTonnes,waterSavingsLiters,wasteDivertedTonnes,renewableEnergyPercent,createdAt,updatedAt,lastReviewed,impactScore,riskLevel,notes,phase) VALUES ('Solar Roof Installation','2025-03-01','2026-03-01','Facilities',800000.00,200000.00,25.0,5.0,'%','400','380','Planning','Install solar panels on all venues','Engineering report','Medium',400.0,0.0,0.0,15.0,'2025-03-05 08:30:00','2025-07-01 11:45:00','2025-07-01',65,'Low','Pending permits','Design';
INSERT INTO sustainability_initiative_tracker (name,startDate,endDate,departmentResponsible,budgetAllocated,actualSpending,targetReductionPercent,currentReductionPercent,metricUnit,baselineValue,currentValue,status,description,verificationMethod,stakeholderEngagementLevel,carbonFootprintTonnes,waterSavingsLiters,wasteDivertedTonnes,renewableEnergyPercent,createdAt,updatedAt,lastReviewed,impactScore,riskLevel,notes,phase) VALUES ('Green Procurement Policy','2025-02-15','2025-11-30','Procurement',300000.00,90000.00,20.0,8.0,'%','100','92','Active','Increase use of eco‑friendly suppliers','Internal audit','High',0.0,250000.0,0.0,10.0,'2025-02-16 10:00:00','2025-08-20 14:20:00','2025-08-20',70,'Medium','Policy approved','Execution');

-- Media Partner Analytics
CREATE TABLE media_partner_analytics (
    analyticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    partnerId INTEGER,
    reportingPeriodStart DATE,
    reportingPeriodEnd DATE,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    videoViews INTEGER,
    averageViewDuration REAL,
    reach INTEGER,
    frequency REAL,
    engagements INTEGER,
    sentimentScore REAL,
    platform TEXT,
    campaignName TEXT,
    costPerMille REAL,
    totalSpend REAL,
    conversionCount INTEGER,
    conversionRate REAL,
    createdAt DATETIME,
    updatedAt DATETIME,
    adUnits TEXT,
    targetAudience TEXT,
    geoRegion TEXT,
    deviceType TEXT,
    creativeVersion TEXT,
    notes TEXT,
    kpiAchieved TEXT,
    rating INTEGER
);
INSERT INTO media_partner_analytics (partnerId,reportingPeriodStart,reportingPeriodEnd,impressions,clicks,ctr,videoViews,averageViewDuration,reach,frequency,engagements,sentimentScore,platform,campaignName,costPerMille,totalSpend,conversionCount,conversionRate,createdAt,updatedAt,adUnits,targetAudience,geoRegion,deviceType,creativeVersion,notes,kpiAchieved,rating) VALUES (10,'2025-05-01','2025-05-31',1500000,4500,0.30,250000,12.5,800000,1.8,3200,0.85,'Social','GrandPrixMay','15.00',22500.00,180,0.04,'2025-06-01 09:00:00','2025-06-01 09:05:00','Banner,Video','Fans age 18-35','Europe','Mobile','v2','Positive trend','Yes',9);
INSERT INTO media_partner_analytics (partnerId,reportingPeriodStart,reportingPeriodEnd,impressions,clicks,ctr,videoViews,averageViewDuration,reach,frequency,engagements,sentimentScore,platform,campaignName,costPerMille,totalSpend,conversionCount,conversionRate,createdAt,updatedAt,adUnits,targetAudience,geoRegion,deviceType,creativeVersion,notes,kpiAchieved,rating) VALUES (12,'2025-04-01','2025-04-30',2000000,6000,0.30,300000,13.0,950000,2.1,4000,0.88,'Display','SpringLaunch','12.50',25000.00,210,0.035,'2025-05-01 08:30:00','2025-05-01 08:35:00','Sidebar,Interstitial','Fans age 25-45','NorthAmerica','Desktop','v1','Stable performance','Yes',8);
INSERT INTO media_partner_analytics (partnerId,reportingPeriodStart,reportingPeriodEnd,impressions,clicks,ctr,videoViews,averageViewDuration,reach,frequency,engagements,sentimentScore,platform,campaignName,costPerMille,totalSpend,conversionCount,conversionRate,createdAt,updatedAt,adUnits,targetAudience,geoRegion,deviceType,creativeVersion,notes,kpiAchieved,rating) VALUES (15,'2025-03-01','2025-03-31',1200000,3000,0.25,180000,11.2,700000,1.6,2500,0.80,'Video','PreSeasonTeaser','14.00',16800.00,150,0.035,'2025-04-01 10:00:00','2025-04-01 10:05:00','PreRoll,MidRoll','Fans age 20-40','Asia','Mobile','v3','Slight dip','No',6);

-- Hospitality Service Logs
CREATE TABLE hospitality_service_logs (
    serviceLogId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    eventId INTEGER,
    serviceDate DATE,
    serviceType TEXT,
    providerName TEXT,
    staffCount INTEGER,
    guestCount INTEGER,
    startTime TEXT,
    endTime TEXT,
    locationArea TEXT,
    equipmentUsed TEXT,
    cost REAL,
    feedbackScore INTEGER,
    issuesReported TEXT,
    resolutionStatus TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT,
    serviceQualityRating INTEGER,
    complianceFlag TEXT,
    supplierContact TEXT,
    contractReference TEXT,
    urgencyLevel TEXT,
    durationMinutes INTEGER,
    serviceCategory TEXT,
    ratingComments TEXT
);
INSERT INTO hospitality_service_logs (venueId,eventId,serviceDate,serviceType,providerName,staffCount,guestCount,startTime,endTime,locationArea,equipmentUsed,cost,feedbackScore,issuesReported,resolutionStatus,createdAt,updatedAt,notes,serviceQualityRating,complianceFlag,supplierContact,contractReference,urgencyLevel,durationMinutes,serviceCategory,ratingComments) VALUES (201,3001,'2025-08-12','Catering','GourmetFoods',12,250,'12:30','15:00','Main Hall','BuffetStations',5000.00,9,'Minor temperature fluctuation','Resolved','2025-08-10 09:00:00','2025-08-12 16:00:00','All meals served on time',9,'Yes','5556789','CF-2025-01','Medium',150,'Food','Excellent service');
INSERT INTO hospitality_service_logs (venueId,eventId,serviceDate,serviceType,providerName,staffCount,guestCount,startTime,endTime,locationArea,equipmentUsed,cost,feedbackScore,issuesReported,resolutionStatus,createdAt,updatedAt,notes,serviceQualityRating,complianceFlag,supplierContact,contractReference,urgencyLevel,durationMinutes,serviceCategory,ratingComments) VALUES (202,3002,'2025-09-05','Security','SecureGuard',8,0,'08:00','22:00','Perimeter','SurveillanceCameras',3000.00,8,'Lost badge report','Investigated','2025-09-01 10:15:00','2025-09-05 22:30:00','No incidents recorded',8,'Yes','5552345','SG-2025-03','Low',840,'Safety','Professional handling');
INSERT INTO hospitality_service_logs (venueId,eventId,serviceDate,serviceType,providerName,staffCount,guestCount,startTime,endTime,locationArea,equipmentUsed,cost,feedbackScore,issuesReported,resolutionStatus,createdAt,updatedAt,notes,serviceQualityRating,complianceFlag,supplierContact,contractReference,urgencyLevel,durationMinutes,serviceCategory,ratingComments) VALUES (203,3003,'2025-10-20','Cleaning','CleanSweep',5,0,'06:00','09:00','VIP Lounge','Vacuum,Polish',800.00,10,'None','N/A','2025-10-18 14:00:00','2025-10-20 09:30:00','Premises spotless',10,'Yes','5551122','CS-2025-07','Low',180,'Maintenance','Outstanding cleanliness');

-- Emergency Response Drills
CREATE TABLE emergency_response_drills (
    drillId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    drillDate DATE,
    drillType TEXT,
    coordinatorName TEXT,
    participantsCount INTEGER,
    scenarioDescription TEXT,
    durationMinutes INTEGER,
    outcome TEXT,
    lessonsLearned TEXT,
    equipmentTested TEXT,
    externalAgenciesInvolved TEXT,
    safetyOfficer TEXT,
    communicationMethod TEXT,
    drillStatus TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT,
    drillCategory TEXT,
    riskLevel TEXT,
    drillRating INTEGER,
    followUpActions TEXT,
    auditReference TEXT,
    complianceStatus TEXT,
    weatherConditions TEXT,
    drillTeamLead TEXT,
    feedbackScore INTEGER
);
INSERT INTO emergency_response_drills (venueId,drillDate,drillType,coordinatorName,participantsCount,scenarioDescription,durationMinutes,outcome,lessonsLearned,equipmentTested,externalAgenciesInvolved,safetyOfficer,communicationMethod,drillStatus,createdAt,updatedAt,notes,drillCategory,riskLevel,drillRating,followUpActions,auditReference,complianceStatus,weatherConditions,drillTeamLead,feedbackScore) VALUES (301,'2025-11-01','Fire Evacuation','Laura Mills',150,'Simulated fire in main concourse',45,'Successful','Improve stairwell signage','FireAlarms,Extinguishers','LocalFireDept','Mark Spencer','PA System','Completed','2025-11-01 08:00:00','2025-11-01 08:45:00','All exits functional', 'Safety','Medium',9,'Update signage by Q1 2026','AUD-2025-11','Compliant','Clear','John Doe',8);
INSERT INTO emergency_response_drills (venueId,drillDate,drillType,coordinatorName,participantsCount,scenarioDescription,durationMinutes,outcome,lessonsLearned,equipmentTested,externalAgenciesInvolved,safetyOfficer,communicationMethod,drillStatus,createdAt,updatedAt,notes,drillCategory,riskLevel,drillRating,followUpActions,auditReference,complianceStatus,weatherConditions,drillTeamLead,feedbackScore) VALUES (302,'2025-12-10','Medical Emergency','Kevin Ross',80,'Simulated cardiac arrest in VIP area',30,'Successful','Add AED signs','AEDs,Defibrillators','EMS','Anna Lee','Radio','Completed','2025-12-10 10:00:00','2025-12-10 10:30:00','Response time under 2 min', 'Health','Low',8,'Place additional AEDs','AUD-2025-12','Compliant','Indoor','Emily Clark',7);
INSERT INTO emergency_response_drills (venueId,drillDate,drillType,coordinatorName,participantsCount,scenarioDescription,durationMinutes,outcome,lessonsLearned,equipmentTested,externalAgenciesInvolved,safetyOfficer,communicationMethod,drillStatus,createdAt,updatedAt,notes,drillCategory,riskLevel,drillRating,followUpActions,auditReference,complianceStatus,weatherConditions,drillTeamLead,feedbackScore) VALUES (303,'2026-01-05','Security Threat','Mike Patel',200,'Unauthorized access attempt at backstage',60,'Partial','Review badge scanning process','CCTV,AccessControl','Police','Tom Green','SMS','Completed','2026-01-05 14:00:00','2026-01-05 15:00:00','Scanning delays noted', 'Security','High',7,'Upgrade scanner firmware','AUD-2026-01','NonCompliant','Cold','Sarah White',6);

-- Renewable Energy Installations
CREATE TABLE renewable_energy_installations (
    installationId INTEGER PRIMARY KEY AUTOINCREMENT,
    siteId INTEGER,
    installationDate DATE,
    energyType TEXT,
    capacityMW REAL,
    providerName TEXT,
    contractStartDate DATE,
    contractEndDate DATE,
    status TEXT,
    expectedAnnualGenerationMWh REAL,
    actualAnnualGenerationMWh REAL,
    maintenanceIntervalMonths INTEGER,
    lastMaintenanceDate DATE,
    nextMaintenanceDate DATE,
    gridConnectionPoint TEXT,
    carbonOffsetTonnes REAL,
    incentiveAmount REAL,
    warrantyPeriodYears INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME,
    notes TEXT,
    locationLatitude REAL,
    locationLongitude REAL,
    installationPhase TEXT,
    regulatoryApprovalStatus TEXT,
    commissionDate DATE,
    decommissionDate DATE,
    performanceRatio REAL,
    financingModel TEXT,
    operationalOwner TEXT
);
INSERT INTO renewable_energy_installations (siteId,installationDate,energyType,capacityMW,providerName,contractStartDate,contractEndDate,status,expectedAnnualGenerationMWh,actualAnnualGenerationMWh,maintenanceIntervalMonths,lastMaintenanceDate,nextMaintenanceDate,gridConnectionPoint,carbonOffsetTonnes,incentiveAmount,warrantyPeriodYears,createdAt,updatedAt,notes,locationLatitude,locationLongitude,installationPhase,regulatoryApprovalStatus,commissionDate,decommissionDate,performanceRatio,financingModel,operationalOwner) VALUES (1,'2025-04-20','Solar','5.0','SunPower','2025-04-01','2030-03-31','Operational',7000.0,0.0,12,'2025-12-01','2026-12-01','CP-01',3000.0,250000.0,25,'2025-04-21 09:00:00','2025-04-21 09:05:00','Initial commissioning','34.0522','-118.2437','Construction','Approved','2025-05-15',NULL,0.85,'PPF','Venue Energy Dept');
INSERT INTO renewable_energy_installations (siteId,installationDate,energyType,capacityMW,providerName,contractStartDate,contractEndDate,status,expectedAnnualGenerationMWh,actualAnnualGenerationMWh,maintenanceIntervalMonths,lastMaintenanceDate,nextMaintenanceDate,gridConnectionPoint,carbonOffsetTonnes,incentiveAmount,warrantyPeriodYears,createdAt,updatedAt,notes,locationLatitude,locationLongitude,installationPhase,regulatoryApprovalStatus,commissionDate,decommissionDate,performanceRatio,financingModel,operationalOwner) VALUES (2,'2025-06-15','Wind','12.0','WindCo','2025-06-01','2035-05-31','Operational',35000.0,0.0,6,'2025-12-15','2026-06-15','CP-02',15000.0,500000.0,20,'2025-06-16 10:00:00','2025-06-16 10:05:00','Turbine alignment check pending','51.5074','-0.1278','Construction','Pending','2025-07-20',NULL,0.78,'Debt','Venue Energy Dept');
INSERT INTO renewable_energy_installations (siteId,installationDate,energyType,capacityMW,providerName,contractStartDate,contractEndDate,status,expectedAnnualGenerationMWh,actualAnnualGenerationMWh,maintenanceIntervalMonths,lastMaintenanceDate,nextMaintenanceDate,gridConnectionPoint,carbonOffsetTonnes,incentiveAmount,warrantyPeriodYears,createdAt,updatedAt,notes,locationLatitude,locationLongitude,installationPhase,regulatoryApprovalStatus,commissionDate,decommissionDate,performanceRatio,financingModel,operationalOwner) VALUES (3,'2025-09-01','Hydro','3.5','AquaPower','2025-09-01','2030-08-31','Planned',15000.0,0.0,24,'2025-12-01','2026-12-01','CP-03',8000.0,300000.0,30,'2025-09-02 08:30:00','2025-09-02 08:35:00','Environmental impact study completed','40.7128','-74.0060','Planning','Approved',NULL,NULL,0.90,'Equity','Venue Energy Dept');

-- Waste Management Activity
CREATE TABLE waste_management_activity (
    activityId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    date DATE,
    wasteType TEXT,
    quantityKg REAL,
    collectionMethod TEXT,
    contractorName TEXT,
    contractId INTEGER,
    disposalFacility TEXT,
    disposalMethod TEXT,
    recyclingRatePercent REAL,
    hazardous BOOLEAN,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    verifiedBy TEXT,
    verificationDate DATE,
    carbonFootprintKg REAL,
    cost REAL,
    wasteCategory TEXT,
    status TEXT,
    shift TEXT,
    temperatureCelsius REAL,
    humidityPercent REAL,
    weightMeasurementDevice TEXT,
    incidentReported TEXT,
    incidentResolution TEXT,
    auditReference TEXT,
    complianceFlag TEXT,
    wasteSource TEXT
);
INSERT INTO waste_management_activity (venueId,date,wasteType,quantityKg,collectionMethod,contractorName,contractId,disposalFacility,disposalMethod,recyclingRatePercent,hazardous,notes,createdAt,updatedAt,verifiedBy,verificationDate,carbonFootprintKg,cost,wasteCategory,status,shift,temperatureCelsius,humidityPercent,weightMeasurementDevice,incidentReported,incidentResolution,auditReference,complianceFlag,wasteSource) VALUES (401,'2025-07-20','Organic',2500.0,'Compactor','GreenClean',78,'Facility A','Landfill',15.0,0,'Compostable food waste','2025-07-21 09:00:00','2025-07-21 09:15:00','Laura Reed','2025-07-21',1200.0,3000.0,'Food','Completed','Day',30.0,55.0,'ScaleX','None','N/A','AUD-2025-07','Yes','Catering');
INSERT INTO waste_management_activity (venueId,date,wasteType,quantityKg,collectionMethod,contractorName,contractId,disposalFacility,disposalMethod,recyclingRatePercent,hazardous,notes,createdAt,updatedAt,verifiedBy,verificationDate,carbonFootprintKg,cost,wasteCategory,status,shift,temperatureCelsius,humidityPercent,weightMeasurementDevice,incidentReported,incidentResolution,auditReference,complianceFlag,wasteSource) VALUES (402,'2025-08-05','Recyclable',1800.0,'Bin','EcoRecycle',82,'Facility B','Recycling Center',85.0,0,'Paper and plastics','2025-08-06 08:30:00','2025-08-06 08:45:00','Mark Collins','2025-08-06',900.0,2100.0,'Recycling','Completed','Evening',28.0,60.0,'ScaleY','None','N/A','AUD-2025-08','Yes','Office');
INSERT INTO waste_management_activity (venueId,date,wasteType,quantityKg,collectionMethod,contractorName,contractId,disposalFacility,disposalMethod,recyclingRatePercent,hazardous,notes,createdAt,updatedAt,verifiedBy,verificationDate,carbonFootprintKg,cost,wasteCategory,status,shift,temperatureCelsius,humidityPercent,weightMeasurementDevice,incidentReported,incidentResolution,auditReference,complianceFlag,wasteSource) VALUES (403,'2025-09-12','Hazardous',350.0,'Special Container','SafeDispose',90,'Facility C','Incineration',0.0,1,'Used batteries','2025-09-13 10:00:00','2025-09-13 10:20:00','Susan Lee','2025-09-13',200.0,5000.0,'Hazardous','Pending','Night',25.0,45.0,'ScaleZ','Spill reported','Cleaned up','AUD-2025-09','No','Technical Equipment');

-- Digital Signage Campaigns
CREATE TABLE digital_signage_campaigns (
    campaignId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    startDate DATE,
    endDate DATE,
    campaignName TEXT,
    mediaType TEXT,
    contentDescription TEXT,
    targetAudience TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    durationSeconds INTEGER,
    locationList TEXT,
    displayResolution TEXT,
    brightnessLevel INTEGER,
    scheduler TEXT,
    status TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    budget REAL,
    actualSpend REAL,
    platformProvider TEXT,
    creativeVersion TEXT,
    notes TEXT,
    priorityLevel TEXT,
    geoTargeting TEXT,
    frequencyCap INTEGER,
    engagementScore REAL,
    complianceCheck TEXT,
    approvalOfficer TEXT,
    approvalDate DATE
);
INSERT INTO digital_signage_campaigns (venueId,startDate,endDate,campaignName,mediaType,contentDescription,targetAudience,impressions,clicks,ctr,durationSeconds,locationList,displayResolution,brightnessLevel,scheduler,status,createdAt,updatedAt,budget,actualSpend,platformProvider,creativeVersion,notes,priorityLevel,geoTargeting,frequencyCap,engagementScore,complianceCheck,approvalOfficer,approvalDate) VALUES (501,'2025-05-01','2025-05-31','Summer Promo','Video','Highlights of upcoming races','Fans age 18-35',2000000,5000,0.25,30,'MainEntrance,Concourse','1920x1080',80,'Auto','Active','2025-04-20 08:00:00','2025-04-20 08:05:00',250000.00,245000.00,'Signify','v2','Smooth playback','High','Global',3,0.78,'Passed','Laura Mills','2025-04-18');
INSERT INTO digital_signage_campaigns (venueId,startDate,endDate,campaignName,mediaType,contentDescription,targetAudience,impressions,clicks,ctr,durationSeconds,locationList,displayResolution,brightnessLevel,scheduler,status,createdAt,updatedAt,budget,actualSpend,platformProvider,creativeVersion,notes,priorityLevel,geoTargeting,frequencyCap,engagementScore,complianceCheck,approvalOfficer,approvalDate) VALUES (502,'2025-06-10','2025-06-20','Safety Alert','Image','Emergency exit routes','All attendees',500000,0,0.00,10,'AllExits','1280x720',70,'Manual','Active','2025-06-01 09:00:00','2025-06-01 09:02:00',50000.00,50000.00,'Samsung','v1','Static image','Critical','Nationwide',5,1.00,'Passed','Mark Collins','2025-05-30');
INSERT INTO digital_signage_campaigns (venueId,startDate,endDate,campaignName,mediaType,contentDescription,targetAudience,impressions,clicks,ctr,durationSeconds,locationList,displayResolution,brightnessLevel,scheduler,status,createdAt,updatedAt,budget,actualSpend,platformProvider,creativeVersion,notes,priorityLevel,geoTargeting,frequencyCap,engagementScore,complianceCheck,approvalOfficer,approvalDate) VALUES (503,'2025-07-15','2025-07-25','Merchandise Launch','Video','New team apparel preview','Fans age 25-45',1200000,2500,0.21,25,'RetailArea,Entrance','1920x1080',85,'Auto','Active','2025-07-01 10:00:00','2025-07-01 10:03:00',150000.00,148500.00,'LG','v3','High energy clips','Medium','Regional',4,0.65,'Passed','Susan Lee','2025-06-28');