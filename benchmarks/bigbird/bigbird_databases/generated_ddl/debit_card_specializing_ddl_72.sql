-- Fleet lease transaction records
CREATE TABLE fleet_lease_transactions
(
    LeaseTxnID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    VehicleID INTEGER,
    LeaseStartDate INTEGER,
    LeaseEndDate INTEGER,
    MonthlyRate REAL,
    TotalPaid REAL,
    PaymentMethodCode INTEGER,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER
);

INSERT INTO fleet_lease_transactions (LeaseTxnID,FleetID,VehicleID,LeaseStartDate,LeaseEndDate,MonthlyRate,TotalPaid,PaymentMethodCode,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (1,100,2001,20230101,20231231,500.00,6000.00,1,10,20,30,40,50,60,70,80,90,100,110,120);
INSERT INTO fleet_lease_transactions (LeaseTxnID,FleetID,VehicleID,LeaseStartDate,LeaseEndDate,MonthlyRate,TotalPaid,PaymentMethodCode,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (2,101,2002,20230215,20240214,450.00,5400.00,2,11,21,31,41,51,61,71,81,91,101,111,121);
INSERT INTO fleet_lease_transactions (LeaseTxnID,FleetID,VehicleID,LeaseStartDate,LeaseEndDate,MonthlyRate,TotalPaid,PaymentMethodCode,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (3,102,2003,20230301,20240301,480.00,5760.00,1,12,22,32,42,52,62,72,82,92,102,112,122);

-- Energy efficiency audit records
CREATE TABLE energy_efficiency_audits
(
    AuditID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    AuditDate INTEGER,
    Score REAL,
    EnergySavedKWh REAL,
    CostSavings REAL,
    AuditorID INTEGER,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER,
    Attr13 INTEGER
);

INSERT INTO energy_efficiency_audits (AuditID,FacilityID,AuditDate,Score,EnergySavedKWh,CostSavings,AuditorID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (1,501,20230615,85.5,1200.0,15000.0,3001,1,2,3,4,5,6,7,8,9,10,11,12,13);
INSERT INTO energy_efficiency_audits (AuditID,FacilityID,AuditDate,Score,EnergySavedKWh,CostSavings,AuditorID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (2,502,20230720,78.2,950.0,11800.0,3002,2,3,4,5,6,7,8,9,10,11,12,13,14);
INSERT INTO energy_efficiency_audits (AuditID,FacilityID,AuditDate,Score,EnergySavedKWh,CostSavings,AuditorID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (3,503,20230810,92.0,1400.0,17500.0,3003,3,4,5,6,7,8,9,10,11,12,13,14,15);

-- Vehicle access log entries
CREATE TABLE vehicle_access_logs
(
    LogID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    AccessPointID INTEGER,
    AccessTimestamp INTEGER,
    AccessTypeCode INTEGER,
    EmployeeID INTEGER,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER,
    Attr13 INTEGER,
    Attr14 INTEGER
);

INSERT INTO vehicle_access_logs (LogID,VehicleID,AccessPointID,AccessTimestamp,AccessTypeCode,EmployeeID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13,Attr14) VALUES (1,2001,10,20230815103000,1,4001,5,6,7,8,9,10,11,12,13,14,15,16,17,18);
INSERT INTO vehicle_access_logs (LogID,VehicleID,AccessPointID,AccessTimestamp,AccessTypeCode,EmployeeID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13,Attr14) VALUES (2,2002,12,20230815111500,2,4002,6,7,8,9,10,11,12,13,14,15,16,17,18,19);
INSERT INTO vehicle_access_logs (LogID,VehicleID,AccessPointID,AccessTimestamp,AccessTypeCode,EmployeeID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13,Attr14) VALUES (3,2003,15,20230815120000,1,4003,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

-- Station refuel inventory snapshots
CREATE TABLE station_refuel_inventory
(
    InventoryID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    ProductID INTEGER,
    InventoryDate INTEGER,
    BeginningQty INTEGER,
    ReceivedQty INTEGER,
    DispensedQty INTEGER,
    EndingQty INTEGER,
    SupplierID INTEGER,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER
);

INSERT INTO station_refuel_inventory (InventoryID,GasStationID,ProductID,InventoryDate,BeginningQty,ReceivedQty,DispensedQty,EndingQty,SupplierID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (1,101,1,20230801,5000,2000,2500,4500,9001,1,2,3,4,5,6,7,8,9,10,11,12);
INSERT INTO station_refuel_inventory (InventoryID,GasStationID,ProductID,InventoryDate,BeginningQty,ReceivedQty,DispensedQty,EndingQty,SupplierID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (2,102,2,20230801,6000,1500,2600,4900,9002,2,3,4,5,6,7,8,9,10,11,12,13);
INSERT INTO station_refuel_inventory (InventoryID,GasStationID,ProductID,InventoryDate,BeginningQty,ReceivedQty,DispensedQty,EndingQty,SupplierID,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (3,103,3,20230801,5500,1800,2400,4900,9003,3,4,5,6,7,8,9,10,11,12,13,14);

-- Detailed customer behavior segment observations
CREATE TABLE customer_behavior_segments_detail
(
    SegmentDetailID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    SegmentID INTEGER,
    ObservationDate INTEGER,
    PurchaseCount INTEGER,
    AvgSpend REAL,
    LoyaltyScore REAL,
    ChannelCode INTEGER,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER
);

INSERT INTO customer_behavior_segments_detail (SegmentDetailID,CustomerID,SegmentID,ObservationDate,PurchaseCount,AvgSpend,LoyaltyScore,ChannelCode,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (1,10001,1,20230715,5,45.50,78.2,2,10,11,12,13,14,15,16,17,18,19,20,21);
INSERT INTO customer_behavior_segments_detail (SegmentDetailID,CustomerID,SegmentID,ObservationDate,PurchaseCount,AvgSpend,LoyaltyScore,ChannelCode,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (2,10002,2,20230720,3,30.00,65.0,1,11,12,13,14,15,16,17,18,19,20,21,22);
INSERT INTO customer_behavior_segments_detail (SegmentDetailID,CustomerID,SegmentID,ObservationDate,PurchaseCount,AvgSpend,LoyaltyScore,ChannelCode,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12) VALUES (3,10003,3,20230725,8,55.75,82.5,3,12,13,14,15,16,17,18,19,20,21,22,23);

-- Public transport incident logs
CREATE TABLE public_transport_incident_logs
(
    IncidentLogID INTEGER PRIMARY KEY,
    TransportModeCode INTEGER,
    IncidentDate INTEGER,
    SeverityLevel INTEGER,
    DelayMinutes INTEGER,
    AffectedPassengers INTEGER,
    ResponseTimeMinutes INTEGER,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER,
    Attr13 INTEGER
);

INSERT INTO public_transport_incident_logs (IncidentLogID,TransportModeCode,IncidentDate,SeverityLevel,DelayMinutes,AffectedPassengers,ResponseTimeMinutes,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (1,1,20230805,3,15,120,5,1,2,3,4,5,6,7,8,9,10,11,12,13);
INSERT INTO public_transport_incident_logs (IncidentLogID,TransportModeCode,IncidentDate,SeverityLevel,DelayMinutes,AffectedPassengers,ResponseTimeMinutes,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (2,2,20230806,2,8,80,3,2,3,4,5,6,7,8,9,10,11,12,13,14,15);
INSERT INTO public_transport_incident_logs (IncidentLogID,TransportModeCode,IncidentDate,SeverityLevel,DelayMinutes,AffectedPassengers,ResponseTimeMinutes,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (3,3,20230807,4,25,200,7,3,4,5,6,7,8,9,10,11,12,13,14,15,16);

-- Smart city water quality monitoring stations
CREATE TABLE smart_city_water_quality_stations
(
    StationID INTEGER PRIMARY KEY,
    LocationID INTEGER,
    InstallDate INTEGER,
    SensorCount INTEGER,
    LastCalibrationDate INTEGER,
    pHLevel REAL,
    Turbidity REAL,
    Conductivity REAL,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER,
    Attr13 INTEGER
);

INSERT INTO smart_city_water_quality_stations (StationID,LocationID,InstallDate,SensorCount,LastCalibrationDate,pHLevel,Turbidity,Conductivity,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (1,5010,20220115,5,20230701,7.2,1.5,250,1,2,3,4,5,6,7,8,9,10,11,12,13);
INSERT INTO smart_city_water_quality_stations (StationID,LocationID,InstallDate,SensorCount,LastCalibrationDate,pHLevel,Turbidity,Conductivity,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (2,5020,20220320,6,20230710,7.0,1.8,260,2,3,4,5,6,7,8,9,10,11,12,13,14);
INSERT INTO smart_city_water_quality_stations (StationID,LocationID,InstallDate,SensorCount,LastCalibrationDate,pHLevel,Turbidity,Conductivity,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (3,5030,20220505,5,20230720,7.4,1.3,245,3,4,5,6,7,8,9,10,11,12,13,14,15);

-- Renewable energy project milestones (extended)
CREATE TABLE renewable_energy_project_milestones_extra
(
    MilestoneID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    MilestoneDate INTEGER,
    MilestoneTypeCode INTEGER,
    CompletionPercent REAL,
    BudgetUsed REAL,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER,
    Attr13 INTEGER,
    Attr14 INTEGER
);

INSERT INTO renewable_energy_project_milestones_extra (MilestoneID,ProjectID,MilestoneDate,MilestoneTypeCode,CompletionPercent,BudgetUsed,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13,Attr14) VALUES (1,2001,20230601,1,20.0,500000.0,1,2,3,4,5,6,7,8,9,10,11,12,13,14);
INSERT INTO renewable_energy_project_milestones_extra (MilestoneID,ProjectID,MilestoneDate,MilestoneTypeCode,CompletionPercent,BudgetUsed,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13,Attr14) VALUES (2,2002,20230715,2,45.0,1200000.0,2,3,4,5,6,7,8,9,10,11,12,13,14,15);
INSERT INTO renewable_energy_project_milestones_extra (MilestoneID,ProjectID,MilestoneDate,MilestoneTypeCode,CompletionPercent,BudgetUsed,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13,Attr14) VALUES (3,2003,20230830,3,70.0,2100000.0,3,4,5,6,7,8,9,10,11,12,13,14,15,16);

-- Logistics route cost records
CREATE TABLE logistics_route_costs
(
    RouteCostID INTEGER PRIMARY KEY,
    RouteID INTEGER,
    CostDate INTEGER,
    DistanceKM REAL,
    FuelCost REAL,
    LaborCost REAL,
    TollCost REAL,
    MaintenanceCost REAL,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER,
    Attr13 INTEGER
);

INSERT INTO logistics_route_costs (RouteCostID,RouteID,CostDate,DistanceKM,FuelCost,LaborCost,TollCost,MaintenanceCost,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (1,3001,20230801,150.5,500.0,800.0,120.0,200.0,1,2,3,4,5,6,7,8,9,10,11,12,13);
INSERT INTO logistics_route_costs (RouteCostID,RouteID,CostDate,DistanceKM,FuelCost,LaborCost,TollCost,MaintenanceCost,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (2,3002,20230802,200.0,650.0,950.0,150.0,250.0,2,3,4,5,6,7,8,9,10,11,12,13,14);
INSERT INTO logistics_route_costs (RouteCostID,RouteID,CostDate,DistanceKM,FuelCost,LaborCost,TollCost,MaintenanceCost,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (3,3003,20230803,180.75,580.0,870.0,130.0,220.0,3,4,5,6,7,8,9,10,11,12,13,14,15);

-- Digital ad interaction metrics
CREATE TABLE digital_ad_interaction_metrics
(
    InteractionID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    AdPlacementID INTEGER,
    InteractionDate INTEGER,
    Clicks INTEGER,
    Impressions INTEGER,
    ViewTimeSec REAL,
    ConversionRate REAL,
    Attr1 INTEGER,
    Attr2 INTEGER,
    Attr3 INTEGER,
    Attr4 INTEGER,
    Attr5 INTEGER,
    Attr6 INTEGER,
    Attr7 INTEGER,
    Attr8 INTEGER,
    Attr9 INTEGER,
    Attr10 INTEGER,
    Attr11 INTEGER,
    Attr12 INTEGER,
    Attr13 INTEGER
);

INSERT INTO digital_ad_interaction_metrics (InteractionID,CampaignID,AdPlacementID,InteractionDate,Clicks,Impressions,ViewTimeSec,ConversionRate,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (1,4001,501,20230810,120,5000,3.5,0.024,1,2,3,4,5,6,7,8,9,10,11,12,13);
INSERT INTO digital_ad_interaction_metrics (InteractionID,CampaignID,AdPlacementID,InteractionDate,Clicks,Impressions,ViewTimeSec,ConversionRate,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (2,4002,502,20230811,95,4500,2.8,0.021,2,3,4,5,6,7,8,9,10,11,12,13,14);
INSERT INTO digital_ad_interaction_metrics (InteractionID,CampaignID,AdPlacementID,InteractionDate,Clicks,Impressions,ViewTimeSec,ConversionRate,Attr1,Attr2,Attr3,Attr4,Attr5,Attr6,Attr7,Attr8,Attr9,Attr10,Attr11,Attr12,Attr13) VALUES (3,4003,503,20230812,150,6000,4.0,0.025,3,4,5,6,7,8,9,10,11,12,13,14,15);