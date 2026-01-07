-- Circuit environment monitoring data
CREATE TABLE circuit_environment_monitoring (
    monitorId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    date DATE,
    temperature REAL,
    humidity REAL,
    windSpeed REAL,
    windDirection TEXT,
    precipitation REAL,
    noiseLevel REAL,
    airQualityIndex INTEGER,
    particulateMatter REAL,
    ozoneLevel REAL,
    uvIndex INTEGER,
    soilMoisture REAL,
    trackSurfaceTemp REAL,
    cameraFeedUrl TEXT,
    sensorStatus TEXT,
    visibility REAL,
    remarks TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO circuit_environment_monitoring (circuitId, date, temperature, humidity, windSpeed, windDirection, precipitation, noiseLevel, airQualityIndex, particulateMatter, ozoneLevel, uvIndex, soilMoisture, trackSurfaceTemp, cameraFeedUrl, sensorStatus, visibility, remarks, createdAt, updatedAt) VALUES (1, '2025-03-12', 22.5, 55.2, 12.3, 'NW', 0.0, 68.4, 42, 12.7, 0.034, 5, 23.1, 21.8, 'http://cams.example.com/1', 'operational', 12.0, 'clear day', '2025-03-12 08:00:00', '2025-03-12 08:00:00');
INSERT INTO circuit_environment_monitoring (circuitId, date, temperature, humidity, windSpeed, windDirection, precipitation, noiseLevel, airQualityIndex, particulateMatter, ozoneLevel, uvIndex, soilMoisture, trackSurfaceTemp, cameraFeedUrl, sensorStatus, visibility, remarks, createdAt, updatedAt) VALUES (2, '2025-04-05', 18.9, 62.0, 8.1, 'E', 0.2, 71.0, 37, 9.4, 0.028, 6, 19.8, 18.5, 'http://cams.example.com/2', 'operational', 15.5, 'light rain', '2025-04-05 07:30:00', '2025-04-05 07:30:00');
INSERT INTO circuit_environment_monitoring (circuitId, date, temperature, humidity, windSpeed, windDirection, precipitation, noiseLevel, airQualityIndex, particulateMatter, ozoneLevel, uvIndex, soilMoisture, trackSurfaceTemp, cameraFeedUrl, sensorStatus, visibility, remarks, createdAt, updatedAt) VALUES (3, '2025-05-20', 27.3, 48.5, 15.0, 'S', 0.0, 66.2, 45, 14.1, 0.041, 8, 25.0, 24.6, 'http://cams.example.com/3', 'maintenance', 10.0, 'high UV', '2025-05-20 09:15:00', '2025-05-20 09:15:00');

-- Team logistics information
CREATE TABLE team_logistics (
    logisticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    raceId INTEGER,
    transportMode TEXT,
    departureDate DATE,
    arrivalDate DATE,
    cargoWeightKg REAL,
    vehicleCount INTEGER,
    driverName TEXT,
    driverLicense TEXT,
    routePlanUrl TEXT,
    customsClearance TEXT,
    accommodationHotel TEXT,
    accommodationRoom TEXT,
    mealPlan TEXT,
    equipmentListUrl TEXT,
    insurancePolicy TEXT,
    liaisonOfficer TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO team_logistics (teamId, raceId, transportMode, departureDate, arrivalDate, cargoWeightKg, vehicleCount, driverName, driverLicense, routePlanUrl, customsClearance, accommodationHotel, accommodationRoom, mealPlan, equipmentListUrl, insurancePolicy, liaisonOfficer, notes, createdAt, updatedAt) VALUES (10, 101, 'air', '2025-03-10', '2025-03-12', 8200.5, 3, 'Carlos Ruiz', 'DL12345', 'http://routes.example.com/10', 'cleared', 'Grand Hotel', '302', 'standard', 'http://equip.example.com/10', 'PolicyA', 'Maria Gomez', 'none', '2025-03-01 10:00:00', '2025-03-01 10:00:00');
INSERT INTO team_logistics (teamId, raceId, transportMode, departureDate, arrivalDate, cargoWeightKg, vehicleCount, driverName, driverLicense, routePlanUrl, customsClearance, accommodationHotel, accommodationRoom, mealPlan, equipmentListUrl, insurancePolicy, liaisonOfficer, notes, createdAt, updatedAt) VALUES (12, 102, 'truck', '2025-04-01', '2025-04-04', 12400.0, 5, 'Ethan Liu', 'DL67890', 'http://routes.example.com/12', 'pending', 'City Inn', '215B', 'high-protein', 'http://equip.example.com/12', 'PolicyB', 'Jenna Lee', 'delayed customs', '2025-03-20 09:30:00', '2025-03-20 09:30:00');
INSERT INTO team_logistics (teamId, raceId, transportMode, departureDate, arrivalDate, cargoWeightKg, vehicleCount, driverName, driverLicense, routePlanUrl, customsClearance, accommodationHotel, accommodationRoom, mealPlan, equipmentListUrl, insurancePolicy, liaisonOfficer, notes, createdAt, updatedAt) VALUES (15, 103, 'sea', '2025-05-05', '2025-05-10', 18500.2, 7, 'Lars Petersen', 'DL54321', 'http://routes.example.com/15', 'cleared', 'Harbor View', '101', 'vegetarian', 'http://equip.example.com/15', 'PolicyC', 'Olivia Hart', 'weather watch', '2025-04-28 14:45:00', '2025-04-28 14:45:00');

-- Driver fitness records
CREATE TABLE driver_fitness_records (
    fitnessId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    recordDate DATE,
    weightKg REAL,
    heightCm INTEGER,
    bodyFatPct REAL,
    restingHeartRate INTEGER,
    VO2max REAL,
    flexibilityScore INTEGER,
    strengthScore INTEGER,
    reactionTimeMs REAL,
    sleepHours REAL,
    hydrationLevel REAL,
    nutritionPlan TEXT,
    injuryStatus TEXT,
    medicalClearance TEXT,
    physiotherapySessions INTEGER,
    mentalScore INTEGER,
    supplementRegimen TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO driver_fitness_records (driverId, recordDate, weightKg, heightCm, bodyFatPct, restingHeartRate, VO2max, flexibilityScore, strengthScore, reactionTimeMs, sleepHours, hydrationLevel, nutritionPlan, injuryStatus, medicalClearance, physiotherapySessions, mentalScore, supplementRegimen, createdAt, updatedAt) VALUES (23, '2025-02-20', 78.4, 180, 9.2, 58, 52.1, 88, 85, 210.5, 7.5, 2.1, 'high carb', 'none', 'clear', 2, 92, 'vitamin D', '2025-02-20 07:00:00', '2025-02-20 07:00:00');
INSERT INTO driver_fitness_records (driverId, recordDate, weightKg, heightCm, bodyFatPct, restingHeartRate, VO2max, flexibilityScore, strengthScore, reactionTimeMs, sleepHours, hydrationLevel, nutritionPlan, injuryStatus, medicalClearance, physiotherapySessions, mentalScore, supplementRegimen, createdAt, updatedAt) VALUES (34, '2025-03-15', 71.2, 175, 8.5, 55, 54.3, 90, 87, 205.0, 8.0, 2.3, 'balanced', 'minor ankle', 'pending', 3, 88, 'omega 3', '2025-03-15 07:15:00', '2025-03-15 07:15:00');
INSERT INTO driver_fitness_records (driverId, recordDate, weightKg, heightCm, bodyFatPct, restingHeartRate, VO2max, flexibilityScore, strengthScore, reactionTimeMs, sleepHours, hydrationLevel, nutritionPlan, injuryStatus, medicalClearance, physiotherapySessions, mentalScore, supplementRegimen, createdAt, updatedAt) VALUES (45, '2025-04-10', 82.0, 182, 10.0, 60, 49.8, 84, 80, 215.7, 6.8, 2.0, 'low carb', 'none', 'clear', 1, 95, 'protein shake', '2025-04-10 07:30:00', '2025-04-10 07:30:00');

-- Race incident reports
CREATE TABLE race_incident_reports (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    lapNumber INTEGER,
    driverId INTEGER,
    incidentType TEXT,
    severity INTEGER,
    description TEXT,
    reportedBy TEXT,
    locationOnTrack TEXT,
    responseTimeSec REAL,
    containmentAction TEXT,
    penaltiesApplied TEXT,
    timestamp TEXT,
    photoUrl TEXT,
    videoUrl TEXT,
    weatherCondition TEXT,
    trackCondition TEXT,
    safetyCarDeployed INTEGER,
    remarks TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO race_incident_reports (raceId, lapNumber, driverId, incidentType, severity, description, reportedBy, locationOnTrack, responseTimeSec, containmentAction, penaltiesApplied, timestamp, photoUrl, videoUrl, weatherCondition, trackCondition, safetyCarDeployed, remarks, createdAt, updatedAt) VALUES (101, 12, 23, 'collision', 3, 'Contact between car 23 and car 34 at Turn 5', 'steward', 'Turn 5', 2.8, 'yellow flag', '5 sec penalty', '2025-03-12 13:45:00', 'http://photos.example.com/inc101.jpg', 'http://videos.example.com/inc101.mp4', 'dry', 'dry', 1, 'minor damage', '2025-03-12 13:50:00', '2025-03-12 13:50:00');
INSERT INTO race_incident_reports (raceId, lapNumber, driverId, incidentType, severity, description, reportedBy, locationOnTrack, responseTimeSec, containmentAction, penaltiesApplied, timestamp, photoUrl, videoUrl, weatherCondition, trackCondition, safetyCarDeployed, remarks, createdAt, updatedAt) VALUES (102, 27, 34, 'mechanical', 2, 'Engine failure causing smoke', 'team', 'Straight 3', 1.5, 'no flag', 'none', '2025-04-14 16:20:00', 'http://photos.example.com/inc102.jpg', 'http://videos.example.com/inc102.mp4', 'cloudy', 'wet', 0, 'retired', '2025-04-14 16:25:00', '2025-04-14 16:25:00');
INSERT INTO race_incident_reports (raceId, lapNumber, driverId, incidentType, severity, description, reportedBy, locationOnTrack, responseTimeSec, containmentAction, penaltiesApplied, timestamp, photoUrl, videoUrl, weatherCondition, trackCondition, safetyCarDeployed, remarks, createdAt, updatedAt) VALUES (103, 5, 45, 'offtrack', 1, 'Went off at Turn 2, rejoined safely', 'marshals', 'Turn 2', 0.9, 'green flag', 'none', '2025-05-21 11:10:00', 'http://photos.example.com/inc103.jpg', 'http://videos.example.com/inc103.mp4', 'sunny', 'dry', 0, 'no action', '2025-05-21 11:15:00', '2025-05-21 11:15:00');

-- Media coverage statistics
CREATE TABLE media_coverage_stats (
    coverageId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    mediaOutlet TEXT,
    region TEXT,
    articleCount INTEGER,
    broadcastHours REAL,
    socialMentions INTEGER,
    sentimentScore REAL,
    peakViewership INTEGER,
    avgViewership INTEGER,
    reachAudience INTEGER,
    contentType TEXT,
    platform TEXT,
    language TEXT,
    journalistName TEXT,
    publicationDate DATE,
    linkUrl TEXT,
    videoUrl TEXT,
    imageCount INTEGER,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO media_coverage_stats (raceId, mediaOutlet, region, articleCount, broadcastHours, socialMentions, sentimentScore, peakViewership, avgViewership, reachAudience, contentType, platform, language, journalistName, publicationDate, linkUrl, videoUrl, imageCount, createdAt, updatedAt) VALUES (101, 'Racing Daily', 'Europe', 12, 8.5, 3400, 0.78, 2500000, 1800000, 5000000, 'report', 'online', 'en', 'Alice Smith', '2025-03-13', 'http://racingdaily.example.com/101', 'http://videos.example.com/101', 45, '2025-03-13 09:00:00', '2025-03-13 09:00:00');
INSERT INTO media_coverage_stats (raceId, mediaOutlet, region, articleCount, broadcastHours, socialMentions, sentimentScore, peakViewership, avgViewership, reachAudience, contentType, platform, language, journalistName, publicationDate, linkUrl, videoUrl, imageCount, createdAt, updatedAt) VALUES (102, 'Sport TV', 'Asia', 8, 10.0, 4100, 0.65, 3000000, 2200000, 6200000, 'highlight', 'tv', 'zh', 'Wei Chen', '2025-04-15', 'http://sporttv.example.com/102', 'http://videos.example.com/102', 30, '2025-04-15 10:00:00', '2025-04-15 10:00:00');
INSERT INTO media_coverage_stats (raceId, mediaOutlet, region, articleCount, broadcastHours, socialMentions, sentimentScore, peakViewership, avgViewership, reachAudience, contentType, platform, language, journalistName, publicationDate, linkUrl, videoUrl, imageCount, createdAt, updatedAt) VALUES (103, 'Global Motors', 'North America', 15, 9.2, 5800, 0.82, 2800000, 2100000, 5500000, 'analysis', 'print', 'en', 'John Doe', '2025-05-22', 'http://globalmotors.example.com/103', 'http://videos.example.com/103', 60, '2025-05-22 11:30:00', '2025-05-22 11:30:00');

-- Ticketing outreach campaigns
CREATE TABLE ticketing_outreach (
    outreachId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    campaignName TEXT,
    startDate DATE,
    endDate DATE,
    targetAudience TEXT,
    budgetUsd REAL,
    channelsUsed TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    conversionRate REAL,
    costPerAcquisition REAL,
    promoCode TEXT,
    discountPct REAL,
    emailSent INTEGER,
    smsSent INTEGER,
    socialPosts INTEGER,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO ticketing_outreach (raceId, campaignName, startDate, endDate, targetAudience, budgetUsd, channelsUsed, impressions, clicks, conversions, conversionRate, costPerAcquisition, promoCode, discountPct, emailSent, smsSent, socialPosts, notes, createdAt, updatedAt) VALUES (101, 'Early Bird 2025', '2025-01-01', '2025-01-31', 'Fans', 150000.00, 'email, social', 1200000, 45000, 12000, 0.083, 12.5, 'EB2025', 15.0, 50000, 8000, 200, 'successful early sales', '2025-01-01 08:00:00', '2025-01-01 08:00:00');
INSERT INTO ticketing_outreach (raceId, campaignName, startDate, endDate, targetAudience, budgetUsd, channelsUsed, impressions, clicks, conversions, conversionRate, costPerAcquisition, promoCode, discountPct, emailSent, smsSent, socialPosts, notes, createdAt, updatedAt) VALUES (102, 'Midseason Boost', '2025-02-15', '2025-03-15', 'Families', 200000.00, 'tv, radio, social', 1800000, 62000, 15000, 0.083, 13.3, 'MSB2025', 10.0, 75000, 12000, 250, 'steady increase', '2025-02-15 09:00:00', '2025-02-15 09:00:00');
INSERT INTO ticketing_outreach (raceId, campaignName, startDate, endDate, targetAudience, budgetUsd, channelsUsed, impressions, clicks, conversions, conversionRate, costPerAcquisition, promoCode, discountPct, emailSent, smsSent, socialPosts, notes, createdAt, updatedAt) VALUES (103, 'Last Minute Deal', '2025-04-20', '2025-05-02', 'Local', 100000.00, 'email, sms', 900000, 30000, 8000, 0.089, 12.5, 'LMD2025', 20.0, 40000, 15000, 180, 'filled remaining seats', '2025-04-20 07:30:00', '2025-04-20 07:30:00');

-- VIP guest list
CREATE TABLE vip_guest_list (
    vipId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    guestName TEXT,
    organization TEXT,
    title TEXT,
    invitationSent INTEGER,
    rsvpStatus TEXT,
    seatNumber TEXT,
    accessLevel TEXT,
    parkingSpot TEXT,
    accommodationHotel TEXT,
    accommodationRoom TEXT,
    dietaryRestrictions TEXT,
    specialRequests TEXT,
    conciergeContact TEXT,
    arrivalDate DATE,
    departureDate DATE,
    vipPassUrl TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO vip_guest_list (raceId, guestName, organization, title, invitationSent, rsvpStatus, seatNumber, accessLevel, parkingSpot, accommodationHotel, accommodationRoom, dietaryRestrictions, specialRequests, conciergeContact, arrivalDate, departureDate, vipPassUrl, notes, createdAt, updatedAt) VALUES (101, 'Emma Watson', 'TechCorp', 'CEO', 1, 'Accepted', 'A12', 'Gold', 'P5', 'Grand Hotel', '101', 'vegetarian', 'window seat', 'Liam Novak', '2025-03-11', '2025-03-13', 'http://vip.example.com/pass101', 'VIP dinner', '2025-02-28 12:00:00', '2025-02-28 12:00:00');
INSERT INTO vip_guest_list (raceId, guestName, organization, title, invitationSent, rsvpStatus, seatNumber, accessLevel, parkingSpot, accommodationHotel, accommodationRoom, dietaryRestrictions, specialRequests, conciergeContact, arrivalDate, departureDate, vipPassUrl, notes, createdAt, updatedAt) VALUES (102, 'Carlos Mendoza', 'AutoWorld', 'Managing Director', 1, 'Accepted', 'B07', 'Platinum', 'P2', 'City Inn', '215B', 'none', 'private lounge', 'Sofia Reed', '2025-04-12', '2025-04-14', 'http://vip.example.com/pass102', 'press conference', '2025-03-10 09:30:00', '2025-03-10 09:30:00');
INSERT INTO vip_guest_list (raceId, guestName, organization, title, invitationSent, rsvpStatus, seatNumber, accessLevel, parkingSpot, accommodationHotel, accommodationRoom, dietaryRestrictions, specialRequests, conciergeContact, arrivalDate, departureDate, vipPassUrl, notes, createdAt, updatedAt) VALUES (103, 'Li Wei', 'Global Motors', 'President', 1, 'Declined', 'C03', 'Silver', 'P9', 'Harbor View', '101', 'gluten-free', 'early arrival', 'Mark Tan', '2025-05-20', '2025-05-22', 'http://vip.example.com/pass103', 'cancellation noted', '2025-04-15 08:45:00', '2025-04-15 08:45:00');

-- Marquee events
CREATE TABLE marquee_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    eventName TEXT,
    startTime TEXT,
    endTime TEXT,
    location TEXT,
    sponsor TEXT,
    expectedAttendance INTEGER,
    ticketPriceUsd REAL,
    isPaid INTEGER,
    description TEXT,
    livestreamUrl TEXT,
    broadcastChannel TEXT,
    hostName TEXT,
    specialGuest TEXT,
    activityType TEXT,
    equipmentNeeded TEXT,
    insuranceRequired INTEGER,
    contactPerson TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO marquee_events (raceId, eventName, startTime, endTime, location, sponsor, expectedAttendance, ticketPriceUsd, isPaid, description, livestreamUrl, broadcastChannel, hostName, specialGuest, activityType, equipmentNeeded, insuranceRequired, contactPerson, notes, createdAt, updatedAt) VALUES (101, 'Opening Ceremony', '2025-03-12 09:00', '2025-03-12 10:30', 'Main Plaza', 'EnergyCo', 5000, 30.00, 1, 'Launch of the Grand Prix', 'http://live.example.com/opening101', 'Channel 5', 'Anna Lee', 'None', 'Performance', 'Stage, sound', 1, 'Mike Turner', 'All set', '2025-02-20 11:00:00', '2025-02-20 11:00:00');
INSERT INTO marquee_events (raceId, eventName, startTime, endTime, location, sponsor, expectedAttendance, ticketPriceUsd, isPaid, description, livestreamUrl, broadcastChannel, hostName, specialGuest, activityType, equipmentNeeded, insuranceRequired, contactPerson, notes, createdAt, updatedAt) VALUES (102, 'Fan Festival', '2025-04-13 12:00', '2025-04-13 18:00', 'Expo Center', 'AutoParts Ltd', 12000, 20.00, 1, 'Interactive fan activities', 'http://live.example.com/festival102', 'Channel 8', 'Roberto Silva', 'Racing Legends', 'Exhibition', 'Tents, booths', 1, 'Sara Patel', 'High demand', '2025-03-05 10:30:00', '2025-03-05 10:30:00');
INSERT INTO marquee_events (raceId, eventName, startTime, endTime, location, sponsor, expectedAttendance, ticketPriceUsd, isPaid, description, livestreamUrl, broadcastChannel, hostName, specialGuest, activityType, equipmentNeeded, insuranceRequired, contactPerson, notes, createdAt, updatedAt) VALUES (103, 'Closing Gala', '2025-05-21 20:00', '2025-05-21 23:00', 'Grand Hall', 'LuxuryCars', 2500, 100.00, 1, 'Awards and celebration', 'http://live.example.com/gala103', 'Channel 2', 'Emily Zhang', 'Former Champion', 'Banquet', 'Catering, AV', 1, 'James Liu', 'Invitation only', '2025-04-10 14:15:00', '2025-04-10 14:15:00');

-- Hospitality catering details
CREATE TABLE hospitality_catering (
    cateringId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    eventDate DATE,
    menuTheme TEXT,
    chefName TEXT,
    dishCount INTEGER,
    vegetarianOptions INTEGER,
    veganOptions INTEGER,
    glutenFreeOptions INTEGER,
    totalMealsPrepared INTEGER,
    wasteKg REAL,
    supplierName TEXT,
    contractStart DATE,
    contractEnd DATE,
    costPerMealUsd REAL,
    totalCostUsd REAL,
    healthInspectionScore INTEGER,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    status TEXT
);

INSERT INTO hospitality_catering (venueId, eventDate, menuTheme, chefName, dishCount, vegetarianOptions, veganOptions, glutenFreeOptions, totalMealsPrepared, wasteKg, supplierName, contractStart, contractEnd, costPerMealUsd, totalCostUsd, healthInspectionScore, notes, createdAt, updatedAt, status) VALUES (1, '2025-03-12', 'Mediterranean', 'Chef Antonio', 15, 5, 2, 3, 1200, 45.2, 'FreshFoods Ltd', '2025-01-01', '2025-12-31', 25.00, 30000.00, 96, 'All dishes well received', '2025-02-15 09:00:00', '2025-02-15 09:00:00', 'approved');
INSERT INTO hospitality_catering (venueId, eventDate, menuTheme, chefName, dishCount, vegetarianOptions, veganOptions, glutenFreeOptions, totalMealsPrepared, wasteKg, supplierName, contractStart, contractEnd, costPerMealUsd, totalCostUsd, healthInspectionScore, notes, createdAt, updatedAt, status) VALUES (2, '2025-04-14', 'Asian Fusion', 'Chef Mei', 12, 4, 3, 2, 980, 38.5, 'Oriental Supply', '2025-02-01', '2025-11-30', 22.00, 21560.00, 94, 'Positive feedback on sushi bar', '2025-03-20 10:30:00', '2025-03-20 10:30:00', 'approved');
INSERT INTO hospitality_catering (venueId, eventDate, menuTheme, chefName, dishCount, vegetarianOptions, veganOptions, glutenFreeOptions, totalMealsPrepared, wasteKg, supplierName, contractStart, contractEnd, costPerMealUsd, totalCostUsd, healthInspectionScore, notes, createdAt, updatedAt, status) VALUES (3, '2025-05-22', 'Classic British', 'Chef Oliver', 10, 3, 1, 4, 750, 30.0, 'BritFoods Co', '2025-03-15', '2025-09-15', 20.00, 15000.00, 98, 'Excellent service', '2025-04-25 08:45:00', '2025-04-25 08:45:00', 'approved');

-- Regulatory compliance records
CREATE TABLE regulatory_compliance (
    complianceId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    authority TEXT,
    regulationCode TEXT,
    complianceStatus TEXT,
    inspectionDate DATE,
    inspectorName TEXT,
    findingsSummary TEXT,
    correctiveActionRequired INTEGER,
    deadlineDate DATE,
    followUpDate DATE,
    penaltiesImposed REAL,
    documentsUrl TEXT,
    notes TEXT,
    createdBy TEXT,
    reviewedBy TEXT,
    reviewDate DATE,
    nextInspectionDue DATE,
    auditScore INTEGER,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO regulatory_compliance (raceId, authority, regulationCode, complianceStatus, inspectionDate, inspectorName, findingsSummary, correctiveActionRequired, deadlineDate, followUpDate, penaltiesImposed, documentsUrl, notes, createdBy, reviewedBy, reviewDate, nextInspectionDue, auditScore, createdAt, updatedAt) VALUES (101, 'FIA', 'R001', 'compliant', '2025-02-20', 'John Miller', 'All safety systems functional', 0, NULL, NULL, 0.0, 'http://compliance.example.com/doc101', 'no issues', 'admin', 'chief', '2025-02-25', '2026-02-20', 95, '2025-02-21 12:00:00', '2025-02-21 12:00:00');
INSERT INTO regulatory_compliance (raceId, authority, regulationCode, complianceStatus, inspectionDate, inspectorName, findingsSummary, correctiveActionRequired, deadlineDate, followUpDate, penaltiesImposed, documentsUrl, notes, createdBy, reviewedBy, reviewDate, nextInspectionDue, auditScore, createdAt, updatedAt) VALUES (102, 'FIA', 'R005', 'non‑compliant', '2025-03-30', 'Laura Chen', 'Insufficient fire barriers', 1, '2025-04-20', '2025-05-10', 5000.00, 'http://compliance.example.com/doc102', 'awaiting remediation', 'admin', 'chief', '2025-04-01', '2026-03-30', 78, '2025-04-02 09:30:00', '2025-04-02 09:30:00');
INSERT INTO regulatory_compliance (raceId, authority, regulationCode, complianceStatus, inspectionDate, inspectorName, findingsSummary, correctiveActionRequired, deadlineDate, followUpDate, penaltiesImposed, documentsUrl, notes, createdBy, reviewedBy, reviewDate, nextInspectionDue, auditScore, createdAt, updatedAt) VALUES (103, 'FIA', 'R009', 'compliant', '2025-05-01', 'Mark Davis', 'All environmental measures met', 0, NULL, NULL, 0.0, 'http://compliance.example.com/doc103', 'green certification granted', 'admin', 'chief', '2025-05-05', '2026-05-01', 92, '2025-05-06 14:20:00', '2025-05-06 14:20:00');