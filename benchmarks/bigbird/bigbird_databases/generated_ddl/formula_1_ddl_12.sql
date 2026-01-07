-- Fan Experience Feedback
CREATE TABLE fan_experience_feedback (
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER NOT NULL,
    eventId INTEGER NOT NULL,
    feedbackDate DATE NOT NULL,
    rating INTEGER,
    comments TEXT,
    netPromoterScore INTEGER,
    sessionLength INTEGER,
    foodRating INTEGER,
    restroomRating INTEGER,
    staffFriendliness INTEGER,
    overallExperience INTEGER,
    suggestion TEXT,
    responded BOOLEAN,
    responseDate DATE,
    channel TEXT,
    surveyVersion TEXT,
    deviceUsed TEXT,
    location TEXT,
    language TEXT
);

INSERT INTO fan_experience_feedback (fanId,eventId,feedbackDate,rating,comments,netPromoterScore,sessionLength,foodRating,restroomRating,staffFriendliness,overallExperience,suggestion,responded,responseDate,channel,surveyVersion,deviceUsed,location,language) VALUES (101,2023,2023-07-01,9,GreatExperience,8,120,9,8,10,9,AddMoreSeating,1,2023-07-02,online,v2,mobile,grandstand,EN);
INSERT INTO fan_experience_feedback (fanId,eventId,feedbackDate,rating,comments,netPromoterScore,sessionLength,foodRating,restroomRating,staffFriendliness,overallExperience,suggestion,responded,responseDate,channel,surveyVersion,deviceUsed,location,language) VALUES (102,2023,2023-07-01,7,GoodButCrowded,6,110,7,6,8,7,ImproveSignage,0,NULL,tablet,v1,tablet,parkingLot,EN);
INSERT INTO fan_experience_feedback (fanId,eventId,feedbackDate,rating,comments,netPromoterScore,sessionLength,foodRating,restroomRating,staffFriendliness,overallExperience,suggestion,responded,responseDate,channel,surveyVersion,deviceUsed,location,language) VALUES (103,2024,2024-03-15,10,ExcellentEvent,10,130,10,9,10,10,NoChangesNeeded,1,2024-03-16,kiosk,v3,kiosk,VIPLounge,EN);

-- Security Patrol Routes
CREATE TABLE security_patrol_routes (
    routeId INTEGER PRIMARY KEY AUTOINCREMENT,
    routeName TEXT NOT NULL,
    startTime TIME,
    endTime TIME,
    frequencyMinutes INTEGER,
    guardCount INTEGER,
    areaCoveredSqM REAL,
    shiftSupervisor TEXT,
    equipmentList TEXT,
    vehicleAssigned TEXT,
    gpsEnabled BOOLEAN,
    notes TEXT,
    lastInspectionDate DATE,
    inspectionStatus TEXT,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    active BOOLEAN,
    priorityLevel INTEGER,
    emergencyContact TEXT,
    protocolVersion TEXT
);

INSERT INTO security_patrol_routes (routeName,startTime,endTime,frequencyMinutes,guardCount,areaCoveredSqM,shiftSupervisor,equipmentList,vehicleAssigned,gpsEnabled,notes,lastInspectionDate,inspectionStatus,createdBy,createdDate,modifiedBy,modifiedDate,active,priorityLevel,emergencyContact,protocolVersion) VALUES (NorthPerimeter,22:00,02:00,30,3,25000,JohnDoe,radios;flashlights;batons,SecVan1,1,CheckLights,2023-06-28,Passed,Admin,2023-06-01,Admin,2023-06-28,1,2,1234567890,v1);
INSERT INTO security_patrol_routes (routeName,startTime,endTime,frequencyMinutes,guardCount,areaCoveredSqM,shiftSupervisor,equipmentList,vehicleAssigned,gpsEnabled,notes,lastInspectionDate,inspectionStatus,createdBy,createdDate,modifiedBy,modifiedDate,active,priorityLevel,emergencyContact,protocolVersion) VALUES (GarageLoop,08:00,12:00,45,2,8000,JaneSmith,radios;handcuffs,SecVan2,1,InspectGates,2023-07-10,Passed,Admin,2023-07-01,Admin,2023-07-10,1,1,0987654321,v2);
INSERT INTO security_patrol_routes (routeName,startTime,endTime,frequencyMinutes,guardCount,areaCoveredSqM,shiftSupervisor,equipmentList,vehicleAssigned,gpsEnabled,notes,lastInspectionDate,inspectionStatus,createdBy,createdDate,modifiedBy,modifiedDate,active,priorityLevel,emergencyContact,protocolVersion) VALUES (VIPLounge,18:00,23:00,20,1,1500,MarkLee,radios;firstAidKit,SecVan3,0,MonitorCrowd,2023-05-15,Failed,Admin,2023-05-01,Admin,2023-05-15,0,3,1122334455,v1);

-- Catering Inventory
CREATE TABLE catering_inventory (
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    itemName TEXT NOT NULL,
    category TEXT,
    quantityOnHand INTEGER,
    unit TEXT,
    reorderLevel INTEGER,
    supplierName TEXT,
    lastOrderDate DATE,
    nextDeliveryDate DATE,
    storageLocation TEXT,
    temperatureRequirement REAL,
    expirationDate DATE,
    isPerishable BOOLEAN,
    batchNumber TEXT,
    costPerUnit REAL,
    totalValue REAL,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    notes TEXT,
    active BOOLEAN,
    skuCode TEXT
);

INSERT INTO catering_inventory (itemName,category,quantityOnHand,unit,reorderLevel,supplierName,lastOrderDate,nextDeliveryDate,storageLocation,temperatureRequirement,expirationDate,isPerishable,batchNumber,costPerUnit,totalValue,createdBy,createdDate,modifiedBy,modifiedDate,notes,active,skuCode) VALUES (WaterBottles,beverages,5000,unit,1000,GlobalDrinks,2023-06-20,2023-06-27,ColdRoom,5.0,2024-06-20,1,WB202306,0.50,2500,Admin,2023-06-20,Admin,2023-06-27,ReorderSoon,1,WBT5000);
INSERT INTO catering_inventory (itemName,category,quantityOnHand,unit,reorderLevel,supplierName,lastOrderDate,nextDeliveryDate,storageLocation,temperatureRequirement,expirationDate,isPerishable,batchNumber,costPerUnit,totalValue,createdBy,createdDate,modifiedBy,modifiedDate,notes,active,skuCode) VALUES (HotDogs,food,1200,unit,300,MeatCo,2023-06-15,2023-06-22,HotPrep,40.0,2023-12-31,1,HD202306,1.20,1440,Admin,2023-06-15,Admin,2023-06-22,CheckCookingTemp,1,HDD1200);
INSERT INTO catering_inventory (itemName,category,quantityOnHand,unit,reorderLevel,supplierName,lastOrderDate,nextDeliveryDate,storageLocation,temperatureRequirement,expirationDate,isPerishable,batchNumber,costPerUnit,totalValue,createdBy,createdDate,modifiedBy,modifiedDate,notes,active,skuCode) VALUES (Napkins,disposables,8000,unit,2000,PaperSupply,2023-05-30,2023-06-05,Warehouse,0,2025-12-31,0,NK202305,0.05,400,Admin,2023-05-30,Admin,2023-06-05,StockOk,1,NKP8000);

-- Volunteer Schedule
CREATE TABLE volunteer_schedule (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    volunteerId INTEGER NOT NULL,
    eventId INTEGER NOT NULL,
    role TEXT,
    shiftStart TIME,
    shiftEnd TIME,
    assignedArea TEXT,
    supervisor TEXT,
    contactNumber TEXT,
    trainingCompleted BOOLEAN,
    equipmentProvided TEXT,
    notes TEXT,
    status TEXT,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    emergencyContact TEXT,
    allergyInfo TEXT,
    uniformSize TEXT,
    badgeId TEXT,
    shiftDate DATE
);

INSERT INTO volunteer_schedule (volunteerId,eventId,role,shiftStart,shiftEnd,assignedArea,supervisor,contactNumber,trainingCompleted,equipmentProvided,notes,status,createdBy,createdDate,modifiedBy,modifiedDate,emergencyContact,allergyInfo,uniformSize,badgeId,shiftDate) VALUES (301,2023,gate,07:00,11:00,NorthGate,MikeBrown,5551234,1,radio;vest,AllGood,confirmed,Admin,2023-06-01,Admin,2023-06-01,5559876,None,M,VG301,2023-07-01);
INSERT INTO volunteer_schedule (volunteerId,eventId,role,shiftStart,shiftEnd,assignedArea,supervisor,contactNumber,trainingCompleted,equipmentProvided,notes,status,createdBy,createdDate,modifiedBy,modifiedDate,emergencyContact,allergyInfo,uniformSize,badgeId,shiftDate) VALUES (302,2023,infoDesk,11:00,15:00,MainPlaza,SarahLee,5555678,1,tablet,NeedsMap,confirmed,Admin,2023-06-01,Admin,2023-06-01,5554321,Peanuts,L,VG302,2023-07-01);
INSERT INTO volunteer_schedule (volunteerId,eventId,role,shiftStart,shiftEnd,assignedArea,supervisor,contactNumber,trainingCompleted,equipmentProvided,notes,status,createdBy,createdDate,modifiedBy,modifiedDate,emergencyContact,allergyInfo,uniformSize,badgeId,shiftDate) VALUES (303,2024,security,18:00,22:00,VIPLounge,JohnSmith,5558765,0,none,TrainingPending,pending,Admin,2023-12-15,Admin,2023-12-15,5551111,Shellfish,XL,VG303,2024-03-15);

-- Merchandise Sales Channels
CREATE TABLE merchandise_sales_channels (
    channelId INTEGER PRIMARY KEY AUTOINCREMENT,
    channelName TEXT NOT NULL,
    platform TEXT,
    currency TEXT,
    conversionRate REAL,
    monthlyFee REAL,
    transactionFee REAL,
    settlementPeriodDays INTEGER,
    supportContact TEXT,
    apiEndpoint TEXT,
    enabled BOOLEAN,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    notes TEXT,
    commissionPercentage REAL,
    averageOrderValue REAL,
    totalTransactions INTEGER,
    activeSince DATE,
    lastSyncDate DATE,
    dataFeedFormat TEXT,
    region TEXT,
    complianceStatus TEXT,
    priorityLevel INTEGER,
    slaHours INTEGER,
    maxConcurrentOrders INTEGER,
    backupContact TEXT,
    integrationStatus TEXT
);

INSERT INTO merchandise_sales_channels (channelName,platform,currency,conversionRate,monthlyFee,transactionFee,settlementPeriodDays,supportContact,apiEndpoint,enabled,createdBy,createdDate,modifiedBy,modifiedDate,notes,commissionPercentage,averageOrderValue,totalTransactions,activeSince,lastSyncDate,dataFeedFormat,region,complianceStatus,priorityLevel,slaHours,maxConcurrentOrders,backupContact,integrationStatus) VALUES (OnlineStore,Shopify,USD,1.0,29.99,2.5,2,techsupport@example.com,https://api.shopify.com,1,Admin,2022-01-01,Admin,2023-06-01,Stable,5.0,45.00,12000,2022-01-01,2023-06-01,JSON,NA,compliant,1,24,500,ops@example.com,live);
INSERT INTO merchandise_sales_channels (channelName,platform,currency,conversionRate,monthlyFee,transactionFee,settlementPeriodDays,supportContact,apiEndpoint,enabled,createdBy,createdDate,modifiedBy,modifiedDate,notes,commissionPercentage,averageOrderValue,totalTransactions,activeSince,lastSyncDate,dataFeedFormat,region,complianceStatus,priorityLevel,slaHours,maxConcurrentOrders,backupContact,integrationStatus) VALUES (MobileApp,Custom,USD,1.0,0,3.0,1,devteam@example.com,https://api.mobileapp.com,1,Admin,2023-03-15,Admin,2023-06-20,InBeta,4.0,30.00,3400,2023-03-15,2023-06-20,XML,EU,compliant,2,12,200,devops@example.com,testing);
INSERT INTO merchandise_sales_channels (channelName,platform,currency,conversionRate,monthlyFee,transactionFee,settlementPeriodDays,supportContact,apiEndpoint,enabled,createdBy,createdDate,modifiedBy,modifiedDate,notes,commissionPercentage,averageOrderValue,totalTransactions,activeSince,lastSyncDate,dataFeedFormat,region,complianceStatus,priorityLevel,slaHours,maxConcurrentOrders,backupContact,integrationStatus) VALUES (PhysicalStore,POS,USD,1.0,0,0,0,storemanager@example.com,NA,1,Admin,2020-05-10,Admin,2023-05-10,LegacySystem,0,80.00,25000,2020-05-10,2023-05-10,CSV,NA,compliant,3,48,1000,storeops@example.com,active);

-- Digital Advertising Metrics
CREATE TABLE digital_advertising_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    campaignName TEXT NOT NULL,
    platform TEXT,
    impressions INTEGER,
    clicks INTEGER,
    clickThroughRate REAL,
    costPerClick REAL,
    totalSpend REAL,
    conversions INTEGER,
    conversionRate REAL,
    revenueGenerated REAL,
    startDate DATE,
    endDate DATE,
    budget REAL,
    dailyBudget REAL,
    targetAudience TEXT,
    geoTargeting TEXT,
    deviceTargeting TEXT,
    adFormat TEXT,
    creativeId TEXT,
    status TEXT,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    notes TEXT,
    frequencyCap INTEGER,
    viewabilityRate REAL,
    averagePosition REAL,
    qualityScore INTEGER,
    landingPageUrl TEXT,
    attributionModel TEXT,
    campaignGoal TEXT,
    roi REAL,
    ecpM REAL,
    adGroupId TEXT,
    adSetId TEXT,
    optimizationEvent TEXT,
    biddingStrategy TEXT,
    placement TEXT
);

INSERT INTO digital_advertising_metrics (campaignName,platform,impressions,clicks,clickThroughRate,costPerClick,totalSpend,conversions,conversionRate,revenueGenerated,startDate,endDate,budget,dailyBudget,targetAudience,geoTargeting,deviceTargeting,adFormat,creativeId,status,createdBy,createdDate,modifiedBy,modifiedDate,notes,frequencyCap,viewabilityRate,averagePosition,qualityScore,landingPageUrl,attributionModel,campaignGoal,roi,ecpM,adGroupId,adSetId,optimizationEvent,biddingStrategy,placement) VALUES (GrandPrixLaunch,GoogleAds,500000,7500,0.015,0.45,3375,550,0.0733,12000,2023-06-01,2023-06-30,4000,133,motorsportFans,EU,desktop;mobile,search,CR001,active,Admin,2023-05-20,Admin,2023-05-20,InitialRun,5,0.85,1.2,8,https://racing.com/landing,firstClick,awareness,3.55,1.2,AG001,AS001,clicks,manual,cpc);
INSERT INTO digital_advertising_metrics (campaignName,platform,impressions,clicks,clickThroughRate,costPerClick,totalSpend,conversions,conversionRate,revenueGenerated,startDate,endDate,budget,dailyBudget,targetAudience,geoTargeting,deviceTargeting,adFormat,creativeId,status,createdBy,createdDate,modifiedBy,modifiedDate,notes,frequencyCap,viewabilityRate,averagePosition,qualityScore,landingPageUrl,attributionModel,campaignGoal,roi,ecpM,adGroupId,adSetId,optimizationEvent,biddingStrategy,placement) VALUES (SeasonTicketPromo,Facebook,800000,9600,0.012,0.30,2880,780,0.0813,15000,2023-07-01,2023-07-31,5000,161,highIncomeFans,NA,mobile,video,CR002,paused,Admin,2023-06-15,Admin,2023-06-15,Seasonal,3,0.78,2.0,7,https://racing.com/tickets,lastClick,conversion,5.21,0.90,AG002,AS002,impressions,auto,cpm);
INSERT INTO digital_advertising_metrics (campaignName,platform,impressions,clicks,clickThroughRate,costPerClick,totalSpend,conversions,conversionRate,revenueGenerated,startDate,endDate,budget,dailyBudget,targetAudience,geoTargeting,deviceTargeting,adFormat,creativeId,status,createdBy,createdDate,modifiedBy,modifiedDate,notes,frequencyCap,viewableRate,averagePosition,qualityScore,landingPageUrl,attributionModel,campaignGoal,roi,ecpM,adGroupId,adSetId,optimizationEvent,biddingStrategy,placement) VALUES (FanEngagementBoost,Twitter,300000,4500,0.015,0.20,900,300,0.0667,8000,2023-05-15,2023-06-15,2000,64,youngFans,NA,desktop,carousel,CR003,active,Admin,2023-05-01,Admin,2023-05-01,Live,4,0.92,1.5,9,https://racing.com/engage,lastClick,engagement,8.89,0.30,AG003,AS003,engagement,manual,cpc);

-- Waste Management Logs
CREATE TABLE waste_management_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER NOT NULL,
    wasteType TEXT,
    quantityKg REAL,
    collectionDate DATE,
    collectionTime TIME,
    contractorName TEXT,
    vehicleId TEXT,
    driverName TEXT,
    disposalMethod TEXT,
    landfillSite TEXT,
    recyclingCenter TEXT,
    hazardous BOOLEAN,
    notes TEXT,
    verified BOOLEAN,
    verifierName TEXT,
    verificationDate DATE,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    weatherCondition TEXT,
    gpsLatitude REAL,
    gpsLongitude REAL,
    sealNumber TEXT,
    complianceStatus TEXT,
    penaltyIncurred REAL,
    correctiveAction TEXT,
    auditReference TEXT,
    status TEXT,
    incidentReported BOOLEAN,
    incidentDescription TEXT,
    emergencyContact TEXT,
    followUpDate DATE,
    followUpAction TEXT,
    reportingPeriod TEXT,
    dataSource TEXT
);

INSERT INTO waste_management_logs (eventId,wasteType,quantityKg,collectionDate,collectionTime,contractorName,vehicleId,driverName,disposalMethod,landfillSite,recyclingCenter,hazardous,notes,verified,verifierName,verificationDate,createdBy,createdDate,modifiedBy,modifiedDate,temperatureC,humidityPercent,windSpeedKph,weatherCondition,gpsLatitude,gpsLongitude,sealNumber,complianceStatus,penaltyIncurred,correctiveAction,auditReference,status,incidentReported,incidentDescription,emergencyContact,followUpDate,followUpAction,reportingPeriod,dataSource) VALUES (2023,plastic,23.5,2023-07-02,14:30,WasteCo,VC001,JohnDriver,recycle,NA,RecycleCenter1,0,CollectedFromFoodCourt,1,AnnaAudit,2023-07-03,Admin,2023-07-02,Admin,2023-07-03,22.5,55,12,Clear,40.7128,-74.0060,SL123,compliant,0,none,AUD001,completed,0,NULL,5551234,2023-07-10,updateRecords,weekly,manual);
INSERT INTO waste_management_logs (eventId,wasteType,quantityKg,collectionDate,collectionTime,contractorName,vehicleId,driverName,disposalMethod,landfillSite,recyclingCenter,hazardous,notes,verified,verifierName,verificationDate,createdBy,createdDate,modifiedBy,modifiedDate,temperatureC,humidityPercent,windSpeedKph,weatherCondition,gpsLatitude,gpsLongitude,sealNumber,complianceStatus,penaltyIncurred,correctiveAction,auditReference,status,incidentReported,incidentDescription,emergencyContact,followUpDate,followUpAction,reportingPeriod,dataSource) VALUES (2024,biohazard,5.2,2024-03-16,09:15,SafeDispose,VC002,EmilyDriver,incinerate,IncinerationSite,NA,1,HandledWithPrecautions,1,MarkAudit,2024-03-17,Admin,2024-03-16,Admin,2024-03-17,18.0,70,8,Rain,34.0522,-118.2437,SL124,noncompliant,1500,reviewProcedures,AUD002,investigation,1,SpillDuringTransfer,5559876,2024-04-01,trainingSession,monthly,automated);
INSERT INTO waste_management_logs (eventId,wasteType,quantityKg,collectionDate,collectionTime,contractorName,vehicleId,driverName,disposalMethod,landfillSite,recyclingCenter,hazardous,notes,verified,verifierName,verificationDate,createdBy,createdDate,modifiedBy,modifiedDate,temperatureC,humidityPercent,windSpeedKph,weatherCondition,gpsLatitude,gpsLongitude,sealNumber,complianceStatus,penaltyIncurred,correctiveAction,auditReference,status,incidentReported,incidentDescription,emergencyContact,followUpDate,followUpAction,reportingPeriod,dataSource) VALUES (2024,metal,12.0,2024-03-20,11:45,MetalRec,VC003,TomDriver,Recycle,MetalLandfill,MetalRecycling,0,StandardPickup,1,LisaAudit,2024-03-21,Admin,2024-03-20,Admin,2024-03-21,20.0,60,10,Cloudy,51.5074,-0.1278,SL125,compliant,0,none,AUD003,completed,0,NULL,5552468,2024-04-05,none,weekly,manual);

-- Parking Allocation
CREATE TABLE parking_allocation (
    allocationId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER NOT NULL,
    zoneName TEXT,
    totalSpots INTEGER,
    reservedSpots INTEGER,
    vipSpots INTEGER,
    staffSpots INTEGER,
    vendorSpots INTEGER,
    handicapSpots INTEGER,
    overflowSpots INTEGER,
    pricingStandard REAL,
    pricingVip REAL,
    pricingStaff REAL,
    pricingVendor REAL,
    pricingHandicap REAL,
    pricingOverflow REAL,
    lastUpdated DATE,
    updatedBy TEXT,
    notes TEXT,
    active BOOLEAN,
    occupancyPercentage REAL,
    averageTurnoverHours REAL,
    signageInstalled BOOLEAN,
    lightingLevelLux REAL,
    securityPatrolled BOOLEAN,
    surveillanceCameras INTEGER,
    entranceCount INTEGER,
    exitCount INTEGER,
    barrierType TEXT,
    paymentMethod TEXT,
    prebookEnabled BOOLEAN,
    prebookLeadDays INTEGER,
    reservedFor TEXT,
    accessControlSystem TEXT,
    maintenanceSchedule TEXT,
    lastInspectionDate DATE,
    inspectionStatus TEXT,
    contractsSigned BOOLEAN,
    contractVendor TEXT,
    contractStartDate DATE,
    contractEndDate DATE,
    penaltyRatePerHour REAL,
    refundPolicy TEXT
);

INSERT INTO parking_allocation (eventId,zoneName,totalSpots,reservedSpots,vipSpots,staffSpots,vendorSpots,handicapSpots,overflowSpots,pricingStandard,pricingVip,pricingStaff,pricingVendor,pricingHandicap,pricingOverflow,lastUpdated,updatedBy,notes,active,occupancyPercentage,averageTurnoverHours,signageInstalled,lightingLevelLux,securityPatrolled,surveillanceCameras,entranceCount,exitCount,barrierType,paymentMethod,prebookEnabled,prebookLeadDays,reservedFor,accessControlSystem,maintenanceSchedule,lastInspectionDate,inspectionStatus,contractsSigned,contractVendor,contractStartDate,contractEndDate,penaltyRatePerHour,refundPolicy) VALUES (2023,NorthZone,1500,200,150,100,80,50,120,15.0,30.0,0,0,0,10,2023-07-01,Admin,NearMainSt,1,85.5,2.5,1,500,1,12,2,gate,card,1,30,VIPs,RFID,monthly,2023-06-28,passed,1,ParkCo,2023-01-01,2023-12-31,25.0,fullRefundWithin24h);
INSERT INTO parking_allocation (eventId,zoneName,totalSpots,reservedSpots,vipSpots,staffSpots,vendorSpots,handicapSpots,overflowSpots,pricingStandard,pricingVip,pricingStaff,pricingVendor,pricingHandicap,pricingOverflow,lastUpdated,updatedBy,notes,active,occupancyPercentage,averageTurnoverHours,signageInstalled,lightingLevelLux,securityPatrolled,surveillanceCameras,entranceCount,exitCount,barrierType,paymentMethod,prebookEnabled,prebookLeadDays,reservedFor,accessControlSystem,maintenanceSchedule,lastInspectionDate,inspectionStatus,contractsSigned,contractVendor,contractStartDate,contractEndDate,penaltyRatePerHour,refundPolicy) VALUES (2023,SouthZone,1800,250,200,120,90,70,150,12.0,28.0,0,0,0,8,2023-07-02,Admin,NearSouthGate,1,78.0,3.0,1,480,1,14,3,barrier,card,1,45,Staff,RFID,weekly,2023-06-30,passed,1,ParkCoSouth,2023-02-01,2023-11-30,20.0,partialRefundAfter2h);
INSERT INTO parking_allocation (eventId,zoneName,totalSpots,reservedSpots,vipSpots,staffSpots,vendorSpots,handicapSpots,overflowSpots,pricingStandard,pricingVip,pricingStaff,pricingVendor,pricingHandicap,pricingOverflow,lastUpdated,updatedBy,notes,active,occupancyPercentage,averageTurnoverHours,signageInstalled,lightingLevelLux,securityPatrolled,surveillanceCameras,entranceCount,exitCount,barrierType,paymentMethod,prebookEnabled,prebookLeadDays,reservedFor,accessControlSystem,maintenanceSchedule,lastInspectionDate,inspectionStatus,contractsSigned,contractVendor,contractStartDate,contractEndDate,penaltyRatePerHour,refundPolicy) VALUES (2024,EastZone,1600,180,180,110,85,60,130,14.0,32.0,0,0,0,12,2024-03-15,Admin,NearEastEntrance,1,82.3,2.8,1,510,1,13,2,gate,card,0,0,General,RFID,monthly,2024-03-10,passed,1,ParkCoEast,2024-01-01,2024-12-31,22.0,noRefund);

-- Emergency Response Units
CREATE TABLE emergency_response_units (
    unitId INTEGER PRIMARY KEY AUTOINCREMENT,
    unitName TEXT NOT NULL,
    unitType TEXT,
    stationLocation TEXT,
    contactNumber TEXT,
    crewSize INTEGER,
    primaryEquipment TEXT,
    secondaryEquipment TEXT,
    responseTimeMinutes INTEGER,
    coverageAreaSqM REAL,
    jurisdiction TEXT,
    activeShift TEXT,
    status TEXT,
    lastDispatchDate DATE,
    lastDispatchTime TIME,
    nextTrainingDate DATE,
    certificationLevel TEXT,
    medicalStaffOnboard BOOLEAN,
    fireSuppressionCapable BOOLEAN,
    rescueGearAvailable BOOLEAN,
    vehicleId TEXT,
    vehicleModel TEXT,
    vehicleYear INTEGER,
    fuelType TEXT,
    maintenanceDueDate DATE,
    lastInspectionDate DATE,
    inspectionStatus TEXT,
    commanderName TEXT,
    notes TEXT,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    operationalBudget REAL,
    operationalCostYear REAL,
    overtimeHours INTEGER,
    averageCallVolume INTEGER,
    mutualAidAgreement BOOLEAN,
    mutualAidPartner TEXT,
    gpsLatitude REAL,
    gpsLongitude REAL,
    communicationChannel TEXT,
    dataFeedSource TEXT
);

INSERT INTO emergency_response_units (unitName,unitType,stationLocation,contactNumber,crewSize,primaryEquipment,secondaryEquipment,responseTimeMinutes,coverageAreaSqM,jurisdiction,activeShift,status,lastDispatchDate,lastDispatchTime,nextTrainingDate,certificationLevel,medicalStaffOnboard,fireSuppressionCapable,rescueGearAvailable,vehicleId,vehicleModel,vehicleYear,fuelType,maintenanceDueDate,lastInspectionDate,inspectionStatus,commanderName,notes,createdBy,createdDate,modifiedBy,modifiedDate,operationalBudget,operationalCostYear,overtimeHours,averageCallVolume,mutualAidAgreement,mutualAidPartner,gpsLatitude,gpsLongitude,communicationChannel,dataFeedSource) VALUES (AlphaTeam,Medical,NorthStation,5551112,5,Defibrillator,Stretcher,6,20000,NorthRegion,Day,active,2023-07-02,14:20,2023-09-01,LevelA,1,0,1,VEH001,Mercedes,2020,Diesel,2023-12-01,2023-06-30,Passed,JohnSmith,ReadyForDeploy,Admin,2023-05-01,Admin,2023-07-01,500000,450000,12,150,1,CountyEMS,40.7306,-73.9352,RADIO,manual);
INSERT INTO emergency_response_units (unitName,unitType,stationLocation,contactNumber,crewSize,primaryEquipment,secondaryEquipment,responseTimeMinutes,coverageAreaSqM,jurisdiction,activeShift,status,lastDispatchDate,lastDispatchTime,nextTrainingDate,certificationLevel,medicalStaffOnboard,fireSuppressionCapable,rescueGearAvailable,vehicleId,vehicleModel,vehicleYear,fuelType,maintenanceDueDate,lastInspectionDate,inspectionStatus,commanderName,notes,createdBy,createdDate,modifiedBy,modifiedDate,operationalBudget,operationalCostYear,overtimeHours,averageCallVolume,mutualAidAgreement,mutualAidPartner,gpsLatitude,gpsLongitude,communicationChannel,dataFeedSource) VALUES (BravoTeam,Fire,EastStation,5552223,8,FireEngine,FirstAidKit,4,25000,EastRegion,Night,active,2023-06-28,23:45,2023-08-15,LevelB,0,1,1,VEH002,Ford,2019,Petrol,2023-11-15,2023-06-20,Passed,EmilyJones,FireReady,Admin,2023-04-15,Admin,2023-06-28,600000,550000,15,200,1,CityFireDept,40.7128,-74.0060,RADIO,automated);
INSERT INTO emergency_response_units (unitName,unitType,stationLocation,contactNumber,crewSize,primaryEquipment,secondaryEquipment,responseTimeMinutes,coverageAreaSqM,jurisdiction,activeShift,status,lastDispatchDate,lastDispatchTime,nextTrainingDate,certificationLevel,medicalStaffOnboard,fireSuppressionCapable,rescueGearAvailable,vehicleId,vehicleModel,vehicleYear,fuelType,maintenanceDueDate,lastInspectionDate,inspectionStatus,commanderName,notes,createdBy,createdDate,modifiedBy,modifiedDate,operationalBudget,operationalCostYear,overtimeHours,averageCallVolume,mutualAidAgreement,mutualAidPartner,gpsLatitude,gpsLongitude,communicationChannel,dataFeedSource) VALUES (CharlieTeam,Rescue,SouthStation,5553334,6,RescueBoat,LifeJacket,5,30000,SouthRegion,Day,standby,2023-07-01,09:10,2023-09-10,LevelC,1,0,1,VEH003,Jeep,2021,Hybrid,2023-12-20,2023-07-01,Passed,MichaelBrown,WaterRescue,Admin,2023-06-01,Admin,2023-07-01,550000,500000,10,120,0,NULL,34.0522,-118.2437,RADIO,manual);

-- Climate Control Systems
CREATE TABLE climate_control_systems (
    systemId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueName TEXT NOT NULL,
    systemType TEXT,
    manufacturer TEXT,
    modelNumber TEXT,
    installationDate DATE,
    lastServiceDate DATE,
    serviceIntervalDays INTEGER,
    coolingCapacityKW REAL,
    heatingCapacityKW REAL,
    airflowCFM INTEGER,
    zoneCount INTEGER,
    controlMethod TEXT,
    energyEfficiencyRatio REAL,
    powerSupplyVoltage INTEGER,
    powerSupplyPhase INTEGER,
    refrigerantType TEXT,
    refrigerantChargeKg REAL,
    sensorCount INTEGER,
    remoteMonitoring BOOLEAN,
    monitoringUrl TEXT,
    alertsEnabled BOOLEAN,
    alertThresholdTemp REAL,
    alertThresholdHumidity REAL,
    maintenanceContact TEXT,
    warrantyExpiration DATE,
    warrantyProvider TEXT,
    status TEXT,
    operationalHours INTEGER,
    averageTempC REAL,
    averageHumidityPercent REAL,
    co2LevelPPM INTEGER,
    noiseLevelDbA REAL,
    ventilationRateM3h REAL,
    filterChangeIntervalDays INTEGER,
    filterType TEXT,
    ipAddress TEXT,
    macAddress TEXT,
    firmwareVersion TEXT,
    lastFirmwareUpdate DATE,
    createdBy TEXT,
    createdDate DATE,
    modifiedBy TEXT,
    modifiedDate DATE,
    notes TEXT
);

INSERT INTO climate_control_systems (venueName,systemType,manufacturer,modelNumber,installationDate,lastServiceDate,serviceIntervalDays,coolingCapacityKW,heatingCapacityKW,airflowCFM,zoneCount,controlMethod,energyEfficiencyRatio,powerSupplyVoltage,powerSupplyPhase,refrigerantType,refrigerantChargeKg,sensorCount,remoteMonitoring,monitoringUrl,alertsEnabled,alertThresholdTemp,alertThresholdHumidity,maintenanceContact,warrantyExpiration,warrantyProvider,status,operationalHours,averageTempC,averageHumidityPercent,co2LevelPPM,noiseLevelDbA,ventilationRateM3h,filterChangeIntervalDays,filterType,ipAddress,macAddress,firmwareVersion,lastFirmwareUpdate,createdBy,createdDate,modifiedBy,modifiedDate,notes) VALUES (GrandPrixCircuit,HVAC,Daikin,DX1000,2022-03-15,2023-06-10,180,500.0,450.0,35000,12,Digital,3.5,400,3,R134a,1200.5,150,1,http://monitoring.circuit.com,1,30.0,55.0,TechSupport,2025-03-15,DaikinCorp,active,12000,22.5,48.0,600,45.0,1800.0,365,HEPA,192.168.1.10,AA:BB:CC:DD:EE:FF,1.2.3,2023-05-20,Admin,2023-01-01,Admin,2023-06-15,RegularCheck);
INSERT INTO climate_control_systems (venueName,systemType,manufacturer,modelNumber,installationDate,lastServiceDate,serviceIntervalDays,coolingCapacityKW,heatingCapacityKW,airflowCFM,zoneCount,controlMethod,energyEfficiencyRatio,powerSupplyVoltage,powerSupplyPhase,refrigerantType,refrigerantChargeKg,sensorCount,remoteMonitoring,monitoringUrl,alertsEnabled,alertThresholdTemp,alertThresholdHumidity,maintenanceContact,warrantyExpiration,warrantyProvider,status,operationalHours,averageTempC,averageHumidityPercent,co2LevelPPM,noiseLevelDbA,ventilationRateM3h,filterChangeIntervalDays,filterType,ipAddress,macAddress,firmwareVersion,lastFirmwareUpdate,createdBy,createdDate,modifiedBy,modifiedDate,notes) VALUES (VIPLounge,Chiller,Carrier,CL200,2021-07-01,2023-04-20,365,200.0,180.0,20000,4,Analog,3.2,230,1,R410A,800.0,80,0,NULL,1,25.0,60.0,FacilitiesTeam,2024-07-01,CarrierInc,active,8000,23.0,52.0,500,40.0,1200.0,180,Carbon,10.0.0.1,11:22:33:44:55:66,1.0.9,2023-03-15,Admin,2021-07-01,Admin,2023-04-20,NoRemote);
INSERT INTO climate_control_systems (venueName,systemType,manufacturer,modelNumber,installationDate,lastServiceDate,serviceIntervalDays,coolingCapacityKW,heatingCapacityKW,airflowCFM,zoneCount,controlMethod,energyEfficiencyRatio,powerSupplyVoltage,powerSupplyPhase,refrigerantType,refrigerantChargeKg,sensorCount,remoteMonitoring,monitoringUrl,alertsEnabled,alertThresholdTemp,alertThresholdHumidity,maintenanceContact,warrantyExpiration,warrantyProvider,status,operationalHours,averageTempC,averageHumidityPercent,co2LevelPPM,noiseLevelDbA,ventilationRateM3h,filterChangeIntervalDays,filterType,ipAddress,macAddress,firmwareVersion,lastFirmwareUpdate,createdBy,createdDate,modifiedBy,modifiedDate,notes) VALUES (MediaCenter,HVAC,Trane,TC3000,2020-11-20,2023-05-05,730,350.0,320.0,40000,8,Digital,3.8,380,3,R32,1500.0,120,1,http://media.center.monitor,1,22.0,45.0,MediaOps,2026-11-20,TraneCo,active,15000,21.5,44.0,550,42.0,2100.0,365,Electrostatic,172.16.0.5,AA:BB:CC:DD:EE:11,2.5.1,2023-04-18,Admin,2020-11-20,Admin,2023-05-05,StablePerformance);