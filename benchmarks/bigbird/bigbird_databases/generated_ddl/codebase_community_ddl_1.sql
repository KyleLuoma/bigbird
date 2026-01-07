-- User login history tracking
CREATE TABLE user_login_history
(
    Id               INTEGER PRIMARY KEY,
    UserId           INTEGER,
    LoginTimestamp   DATETIME,
    IpAddress        TEXT,
    DeviceType       TEXT,
    Browser          TEXT,
    Os               TEXT,
    Country          TEXT,
    Region           TEXT,
    City             TEXT,
    Latitude         REAL,
    Longitude        REAL,
    SessionToken     TEXT,
    IsSuccessful     INTEGER,
    FailureReason    TEXT,
    TwoFactorUsed    INTEGER,
    TwoFactorMethod  TEXT,
    LoginMethod      TEXT,
    AppVersion       TEXT,
    NetworkType      TEXT
);

INSERT INTO user_login_history (Id,UserId,LoginTimestamp,IpAddress,DeviceType,Browser,Os,Country,Region,City,Latitude,Longitude,SessionToken,IsSuccessful,FailureReason,TwoFactorUsed,TwoFactorMethod,LoginMethod,AppVersion,NetworkType) VALUES (1,101,'2023-01-01 08:15:00','192.168.1.10','Desktop','Chrome','Windows','USA','CA','SanFrancisco',37.7749,-122.4194,'tokenabc123',1,NULL,1,'SMS','Password','1.2.3','WiFi');
INSERT INTO user_login_history (Id,UserId,LoginTimestamp,IpAddress,DeviceType,Browser,Os,Country,Region,City,Latitude,Longitude,SessionToken,IsSuccessful,FailureReason,TwoFactorUsed,TwoFactorMethod,LoginMethod,AppVersion,NetworkType) VALUES (2,102,'2023-01-02 12:30:45','203.0.113.5','Mobile','Safari','iOS','Canada','ON','Toronto',43.6532,-79.3832,'tokendef456',0,'InvalidPassword',0,NULL,'OAuth','2.0.1','Cellular');
INSERT INTO user_login_history (Id,UserId,LoginTimestamp,IpAddress,DeviceType,Browser,Os,Country,Region,City,Latitude,Longitude,SessionToken,IsSuccessful,FailureReason,TwoFactorUsed,TwoFactorMethod,LoginMethod,AppVersion,NetworkType) VALUES (3,103,'2023-01-03 18:45:20','198.51.100.22','Tablet','Firefox','Android','UK','London','London',51.5074,-0.1278,'tokenghi789',1,NULL,1,'Authenticator','SSO','3.5.0','WiFi');

-- Post sharing activity
CREATE TABLE post_shares
(
    Id                INTEGER PRIMARY KEY,
    PostId            INTEGER,
    ShareTimestamp    DATETIME,
    Platform          TEXT,
    Url               TEXT,
    Referrer          TEXT,
    CampaignId        TEXT,
    ShareMethod       TEXT,
    Device            TEXT,
    Browser           TEXT,
    Os                TEXT,
    Country           TEXT,
    Region            TEXT,
    City              TEXT,
    Latitude          REAL,
    Longitude         REAL,
    UserId            INTEGER,
    IsAnonymous       INTEGER,
    ShareCount        INTEGER,
    ShareDepth        INTEGER,
    Notes             TEXT
);

INSERT INTO post_shares (Id,PostId,ShareTimestamp,Platform,Url,Referrer,CampaignId,ShareMethod,Device,Browser,Os,Country,Region,City,Latitude,Longitude,UserId,IsAnonymous,ShareCount,ShareDepth,Notes) VALUES (1,201,'2023-02-01 09:00:00','Twitter','https://t.co/abc','https://example.com','camp01','Button','Desktop','Chrome','Windows','USA','NY','NewYork',40.7128,-74.0060,101,0,5,1,'Initial tweet');
INSERT INTO post_shares (Id,PostId,ShareTimestamp,Platform,Url,Referrer,CampaignId,ShareMethod,Device,Browser,Os,Country,Region,City,Latitude,Longitude,UserId,IsAnonymous,ShareCount,ShareDepth,Notes) VALUES (2,202,'2023-02-02 14:20:15','Facebook','https://fb.me/def','https://example.org','camp02','Link','Mobile','Safari','iOS','Canada','BC','Vancouver',49.2827,-123.1207,102,1,3,2,'Shared via mobile app');
INSERT INTO post_shares (Id,PostId,ShareTimestamp,Platform,Url,Referrer,CampaignId,ShareMethod,Device,Browser,Os,Country,Region,City,Latitude,Longitude,UserId,IsAnonymous,ShareCount,ShareDepth,Notes) VALUES (3,203,'2023-02-03 20:45:30','LinkedIn','https://lnkd.in/ghi','https://example.net','camp03','Embed','Desktop','Edge','Windows','UK','London','London',51.5074,-0.1278,103,0,2,1,'Professional sharing');

-- Tag additional metadata
CREATE TABLE tag_metadata
(
    Id               INTEGER PRIMARY KEY,
    TagId            INTEGER,
    SynonymCount     INTEGER,
    RelatedTagId     INTEGER,
    IsModeratorOnly INTEGER,
    CreationDate     DATETIME,
    LastUpdateDate   DATETIME,
    Description      TEXT,
    WikiExcerpt      TEXT,
    WikiUrl          TEXT,
    PopularityScore  REAL,
    UsageFrequency   INTEGER,
    AvgScore         REAL,
    AvgViewCount     REAL,
    IsFeatured       INTEGER,
    FeaturedUntil    DATETIME,
    Category         TEXT,
    Subcategory      TEXT,
    Language         TEXT,
    IsDeprecated     INTEGER
);

INSERT INTO tag_metadata (Id,TagId,SynonymCount,RelatedTagId,IsModeratorOnly,CreationDate,LastUpdateDate,Description,WikiExcerpt,WikiUrl,PopularityScore,UsageFrequency,AvgScore,AvgViewCount,IsFeatured,FeaturedUntil,Category,Subcategory,Language,IsDeprecated) VALUES (1,301,2,401,0,'2022-01-01 00:00:00','2023-01-15 12:00:00','Tag for database queries','Short description','https://example.com/wiki/db',85.5,1200,4.2,3500.0,1,'2023-12-31 23:59:59','Technology','Database','en',0);
INSERT INTO tag_metadata (Id,TagId,SynonymCount,RelatedTagId,IsModeratorOnly,CreationDate,LastUpdateDate,Description,WikiExcerpt,WikiUrl,PopularityScore,UsageFrequency,AvgScore,AvgViewCount,IsFeatured,FeaturedUntil,Category,Subcategory,Language,IsDeprecated) VALUES (2,302,0,402,1,'2021-06-15 08:30:00','2023-02-10 09:45:00','Tag for moderation tools','Moderation overview','https://example.com/wiki/mod',70.0,800,3.8,2100.0,0,NULL,'Administration','Moderation','en',0);
INSERT INTO tag_metadata (Id,TagId,SynonymCount,RelatedTagId,IsModeratorOnly,CreationDate,LastUpdateDate,Description,WikiExcerpt,WikiUrl,PopularityScore,UsageFrequency,AvgScore,AvgViewCount,IsFeatured,FeaturedUntil,Category,Subcategory,Language,IsDeprecated) VALUES (3,303,1,403,0,'2020-11-20 14:10:00','2023-03-05 16:20:00','Tag for UI design','Design principles','https://example.com/wiki/ui',65.3,500,4.5,1500.0,0,NULL,'Design','UI','en',0);

-- Site calendar events
CREATE TABLE site_events
(
    EventId               INTEGER PRIMARY KEY,
    EventName             TEXT,
    StartDate             DATETIME,
    EndDate               DATETIME,
    VenueName             TEXT,
    VenueAddress          TEXT,
    City                  TEXT,
    State                 TEXT,
    Country               TEXT,
    OrganizerUserId       INTEGER,
    MaxAttendees          INTEGER,
    CurrentRegistrations  INTEGER,
    IsVirtual             INTEGER,
    VirtualUrl            TEXT,
    Description           TEXT,
    Category              TEXT,
    Subcategory           TEXT,
    Sponsor               TEXT,
    TicketPrice           REAL,
    Currency              TEXT,
    ContactEmail          TEXT
);

INSERT INTO site_events (EventId,EventName,StartDate,EndDate,VenueName,VenueAddress,City,State,Country,OrganizerUserId,MaxAttendees,CurrentRegistrations,IsVirtual,VirtualUrl,Description,Category,Subcategory,Sponsor,TicketPrice,Currency,ContactEmail) VALUES (1,'Annual Developer Summit','2023-09-10 09:00:00','2023-09-12 17:00:00','Grand Hall','123 Main St','SanFrancisco','CA','USA',101,500,320,0,NULL,'Three day conference for developers','Conference','Technology','TechCorp',199.99,'USD','info@techcorp.com');
INSERT INTO site_events (EventId,EventName,StartDate,EndDate,VenueName,VenueAddress,City,State,Country,OrganizerUserId,MaxAttendees,CurrentRegistrations,IsVirtual,VirtualUrl,Description,Category,Subcategory,Sponsor,TicketPrice,Currency,ContactEmail) VALUES (2,'Virtual Hackathon 2023','2023-10-01 00:00:00','2023-10-07 23:59:59','Online','N/A','N/A','N/A','Online',102,1000,850,1,'https://hackathon.example.com','Week-long coding challenge','Hackathon','Programming','CodeLabs',0.0,'USD','support@codelabs.io');
INSERT INTO site_events (EventId,EventName,StartDate,EndDate,VenueName,VenueAddress,City,State,Country,OrganizerUserId,MaxAttendees,CurrentRegistrations,IsVirtual,VirtualUrl,Description,Category,Subcategory,Sponsor,TicketPrice,Currency,ContactEmail) VALUES (3,'Design Meetup','2023-11-05 18:00:00','2023-11-05 20:00:00','Creative Space','456 Oak Ave','London','N/A','UK',103,150,140,0,NULL,'Monthly meetup for UI/UX designers','Meetup','Design','DesignCo',25.0,'GBP','contact@designco.co.uk');

-- User preference settings
CREATE TABLE user_preferences
(
    PreferenceId          INTEGER PRIMARY KEY,
    UserId                INTEGER,
    Theme                 TEXT,
    Language              TEXT,
    EmailNotifications    INTEGER,
    PushNotifications     INTEGER,
    DarkModeEnabled      INTEGER,
    FontSize              INTEGER,
    Timezone              TEXT,
    DateFormat            TEXT,
    ShowAvatars           INTEGER,
    ShowBadges            INTEGER,
    AutoPlayVideos       INTEGER,
    CollapseComments      INTEGER,
    HomePageLayout       TEXT,
    DigestFrequency      TEXT,
    BetaFeaturesEnabled  INTEGER,
    ContentFilterLevel   INTEGER,
    AccessibilityMode    INTEGER,
    PreferredSearchEngine TEXT
);

INSERT INTO user_preferences (PreferenceId,UserId,Theme,Language,EmailNotifications,PushNotifications,DarkModeEnabled,FontSize,Timezone,DateFormat,ShowAvatars,ShowBadges,AutoPlayVideos,CollapseComments,HomePageLayout,DigestFrequency,BetaFeaturesEnabled,ContentFilterLevel,AccessibilityMode,PreferredSearchEngine) VALUES (1,101,'light','en',1,1,0,14,'UTC','MM/DD/YYYY',1,1,0,1,'grid','daily',0,1,0,'Google');
INSERT INTO user_preferences (PreferenceId,UserId,Theme,Language,EmailNotifications,PushNotifications,DarkModeEnabled,FontSize,Timezone,DateFormat,ShowAvatars,ShowBadges,AutoPlayVideos,CollapseComments,HomePageLayout,DigestFrequency,BetaFeaturesEnabled,ContentFilterLevel,AccessibilityMode,PreferredSearchEngine) VALUES (2,102,'dark','fr',0,1,1,16,'Europe/Paris','DD/MM/YYYY',0,0,1,0,'list','weekly',1,2,1,'Bing');
INSERT INTO user_preferences (PreferenceId,UserId,Theme,Language,EmailNotifications,PushNotifications,DarkModeEnabled,FontSize,Timezone,DateFormat,ShowAvatars,ShowBadges,AutoPlayVideos,CollapseComments,HomePageLayout,DigestFrequency,BetaFeaturesEnabled,ContentFilterLevel,AccessibilityMode,PreferredSearchEngine) VALUES (3,103,'light','es',1,0,0,12,'America/Mexico_City','YYYY-MM-DD',1,0,0,1,'grid','monthly',0,0,0,'DuckDuckGo');

-- API key usage logs
CREATE TABLE api_key_usage
(
    UsageId                 INTEGER PRIMARY KEY,
    ApiKeyId                INTEGER,
    UserId                  INTEGER,
    Endpoint                TEXT,
    HttpMethod              TEXT,
    RequestTimestamp        DATETIME,
    ResponseTimeMs          INTEGER,
    StatusCode              INTEGER,
    IpAddress               TEXT,
    UserAgent               TEXT,
    DataTransferredBytes    INTEGER,
    QuotaRemaining          INTEGER,
    RateLimitExceeded       INTEGER,
    ErrorMessage            TEXT,
    ApplicationName         TEXT,
    ApplicationVersion      TEXT,
    IsSuccessful            INTEGER,
    Region                  TEXT,
    ServicePlan             TEXT,
    RequestId               TEXT,
    Notes                   TEXT
);

INSERT INTO api_key_usage (UsageId,ApiKeyId,UserId,Endpoint,HttpMethod,RequestTimestamp,ResponseTimeMs,StatusCode,IpAddress,UserAgent,DataTransferredBytes,QuotaRemaining,RateLimitExceeded,ErrorMessage,ApplicationName,ApplicationVersion,IsSuccessful,Region,ServicePlan,RequestId,Notes) VALUES (1,1001,101,'/v1/posts','GET','2023-04-01 10:00:00',120,200,'192.168.1.10','MyApp/1.0',2048,9500,0,NULL,'MyApp','1.0',1,'us-east','standard','req-abc123','First request');
INSERT INTO api_key_usage (UsageId,ApiKeyId,UserId,Endpoint,HttpMethod,RequestTimestamp,ResponseTimeMs,StatusCode,IpAddress,UserAgent,DataTransferredBytes,QuotaRemaining,RateLimitExceeded,ErrorMessage,ApplicationName,ApplicationVersion,IsSuccessful,Region,ServicePlan,RequestId,Notes) VALUES (2,1002,102,'/v1/comments','POST','2023-04-02 11:30:00',250,429,'203.0.113.5','AnotherApp/2.5',5120,8000,1,'Rate limit hit','AnotherApp','2.5',0,'eu-west','premium','req-def456','Rate limit exceeded');
INSERT INTO api_key_usage (UsageId,ApiKeyId,UserId,Endpoint,HttpMethod,RequestTimestamp,ResponseTimeMs,StatusCode,IpAddress,UserAgent,DataTransferredBytes,QuotaRemaining,RateLimitExceeded,ErrorMessage,ApplicationName,ApplicationVersion,IsSuccessful,Region,ServicePlan,RequestId,Notes) VALUES (3,1003,103,'/v1/votes','DELETE','2023-04-03 14:45:00',80,404,'198.51.100.22','SampleApp/3.1',128,9700,0,'Not found','SampleApp','3.1',0,'ap-southeast','standard','req-ghi789','Invalid vote id');

-- Advertising impressions tracking
CREATE TABLE ad_impressions
(
    ImpressionId      INTEGER PRIMARY KEY,
    AdId              INTEGER,
    UserId            INTEGER,
    Timestamp         DATETIME,
    PageUrl           TEXT,
    ReferrerUrl       TEXT,
    DeviceType        TEXT,
    Browser           TEXT,
    Os                TEXT,
    Country           TEXT,
    Region            TEXT,
    City              TEXT,
    Latitude          REAL,
    Longitude         REAL,
    Clicked           INTEGER,
    ClickTimestamp    DATETIME,
    Conversion        INTEGER,
    ConversionTimestamp DATETIME,
    CostCents         INTEGER,
    RevenueCents      INTEGER,
    CampaignId        INTEGER,
    NetworkId         INTEGER
);

INSERT INTO ad_impressions (ImpressionId,AdId,UserId,Timestamp,PageUrl,ReferrerUrl,DeviceType,Browser,Os,Country,Region,City,Latitude,Longitude,Clicked,ClickTimestamp,Conversion,ConversionTimestamp,CostCents,RevenueCents,CampaignId,NetworkId) VALUES (1,501,101,'2023-05-01 09:15:00','https://example.com/article','https://google.com','Desktop','Chrome','Windows','USA','NY','NewYork',40.7128,-74.0060,1,'2023-05-01 09:15:05',0,NULL,5,0,2001,10);
INSERT INTO ad_impressions (ImpressionId,AdId,UserId,Timestamp,PageUrl,ReferrerUrl,DeviceType,Browser,Os,Country,Region,City,Latitude,Longitude,Clicked,ClickTimestamp,Conversion,ConversionTimestamp,CostCents,RevenueCents,CampaignId,NetworkId) VALUES (2,502,102,'2023-05-02 14:40:00','https://example.org/blog','https://bing.com','Mobile','Safari','iOS','Canada','BC','Vancouver',49.2827,-123.1207,0,NULL,0,NULL,4,0,2002,12);
INSERT INTO ad_impressions (ImpressionId,AdId,UserId,Timestamp,PageUrl,ReferrerUrl,DeviceType,Browser,Os,Country,Region,City,Latitude,Longitude,Clicked,ClickTimestamp,Conversion,ConversionTimestamp,CostCents,RevenueCents,CampaignId,NetworkId) VALUES (3,503,103,'2023-05-03 20:05:00','https://example.net/product','https://yahoo.com','Tablet','Firefox','Android','UK','London','London',51.5074,-0.1278,1,'2023-05-03 20:05:10',1,'2023-05-03 20:06:00',6,15,2003,9);

-- Search query logs
CREATE TABLE search_queries
(
    QueryId           INTEGER PRIMARY KEY,
    UserId            INTEGER,
    QueryText         TEXT,
    Timestamp         DATETIME,
    ResultCount       INTEGER,
    ClickedResultId   INTEGER,
    ClickPosition     INTEGER,
    DeviceType        TEXT,
    Browser           TEXT,
    Os                TEXT,
    Country           TEXT,
    Region            TEXT,
    City              TEXT,
    SessionId         TEXT,
    IsAdvancedSearch  INTEGER,
    FiltersApplied    TEXT,
    SortOrder         TEXT,
    Language          TEXT,
    SearchEngineVersion TEXT,
    DurationMs        INTEGER
);

INSERT INTO search_queries (QueryId,UserId,QueryText,Timestamp,ResultCount,ClickedResultId,ClickPosition,DeviceType,Browser,Os,Country,Region,City,SessionId,IsAdvancedSearch,FiltersApplied,SortOrder,Language,SearchEngineVersion,DurationMs) VALUES (1,101,'sql schema generation','2023-06-01 08:00:00',42,201,3,'Desktop','Chrome','Windows','USA','CA','SanFrancisco','sess123',0,'tag:sql','relevance','en','v1.2',120);
INSERT INTO search_queries (QueryId,UserId,QueryText,Timestamp,ResultCount,ClickedResultId,ClickPosition,DeviceType,Browser,Os,Country,Region,City,SessionId,IsAdvancedSearch,FiltersApplied,SortOrder,Language,SearchEngineVersion,DurationMs) VALUES (2,102,'best practices for nl to sql','2023-06-02 12:30:00',30,202,1,'Mobile','Safari','iOS','Canada','ON','Toronto','sess456',1,'date:2023','date','en','v1.3',95);
INSERT INTO search_queries (QueryId,UserId,QueryText,Timestamp,ResultCount,ClickedResultId,ClickPosition,DeviceType,Browser,Os,Country,Region,City,SessionId,IsAdvancedSearch,FiltersApplied,SortOrder,Language,SearchEngineVersion,DurationMs) VALUES (3,103,'how to create large schemas','2023-06-03 17:45:00',55,203,5,'Tablet','Firefox','Android','UK','London','London','sess789',0,'','date','en','v1.2',110);

-- Content moderation actions
CREATE TABLE content_moderation
(
    ModerationId          INTEGER PRIMARY KEY,
    ContentId             INTEGER,
    ContentType           TEXT,
    ModeratorUserId       INTEGER,
    ActionTaken           TEXT,
    ActionTimestamp       DATETIME,
    ReasonCode            TEXT,
    ReasonDetail          TEXT,
    IsReversible          INTEGER,
    ReversalUserId        INTEGER,
    ReversalTimestamp     DATETIME,
    Notes                 TEXT,
    SeverityLevel         INTEGER,
    EscalatedTo           TEXT,
    FollowUpNeeded        INTEGER,
    FollowUpDueDate       DATETIME,
    EvidenceUrl           TEXT,
    PublicComment         TEXT,
    PrivateComment        TEXT,
    Resolved              INTEGER
);

INSERT INTO content_moderation (ModerationId,ContentId,ContentType,ModeratorUserId,ActionTaken,ActionTimestamp,ReasonCode,ReasonDetail,IsReversible,ReversalUserId,ReversalTimestamp,Notes,SeverityLevel,EscalatedTo,FollowUpNeeded,FollowUpDueDate,EvidenceUrl,PublicComment,PrivateComment,Resolved) VALUES (1,301,'post',101,'delete','2023-07-01 09:00:00','spam','Repeated spam links',0,NULL,NULL,'Removed after warnings',5,'senior_mod',0,NULL,NULL,'Post removed as spam','Your post was removed due to spam','User appealed, pending',0);
INSERT INTO content_moderation (ModerationId,ContentId,ContentType,ModeratorUserId,ActionTaken,ActionTimestamp,ReasonCode,ReasonDetail,IsReversible,ReversalUserId,ReversalTimestamp,Notes,SeverityLevel,EscalatedTo,FollowUpNeeded,FollowUpDueDate,EvidenceUrl,PublicComment,PrivateComment,Resolved) VALUES (2,302,'comment',102,'flag','2023-07-02 14:30:00','offensive','Harsh language towards others',1,103,'2023-07-03 10:00:00','Flagged, later unflagged after edit',2,'team_lead',1,'2023-07-10 00:00:00',NULL,'Comment was edited to remove offensive content','User edited comment',1);
INSERT INTO content_moderation (ModerationId,ContentId,ContentType,ModeratorUserId,ActionTaken,ActionTimestamp,ReasonCode,ReasonDetail,IsReversible,ReversalUserId,ReversalTimestamp,Notes,SeverityLevel,EscalatedTo,FollowUpNeeded,FollowUpDueDate,EvidenceUrl,PublicComment,PrivateComment,Resolved) VALUES (3,303,'user',103,'suspend','2023-07-03 18:45:00','abuse','Multiple violations of code of conduct',0,NULL,NULL,'User suspended for 30 days',4,'admin',0,NULL,NULL,'User will be reinstated after suspension','Suspension applied',0);

-- Notification settings per user
CREATE TABLE notification_settings
(
    SettingId                 INTEGER PRIMARY KEY,
    UserId                    INTEGER,
    NotifyOnComment           INTEGER,
    NotifyOnAnswer            INTEGER,
    NotifyOnBadge             INTEGER,
    NotifyOnMention           INTEGER,
    NotifyOnEdit              INTEGER,
    NotifyOnTagFollow         INTEGER,
    EmailEnabled              INTEGER,
    SmsEnabled                INTEGER,
    PushEnabled               INTEGER,
    DailyDigestEnabled        INTEGER,
    WeeklyDigestEnabled       INTEGER,
    ImmediatePush             INTEGER,
    QuietHoursStart           TEXT,
    QuietHoursEnd             TEXT,
    Timezone                  TEXT,
    PreferredChannel          TEXT,
    Language                  TEXT,
    DndEnabled                INTEGER,
    DndStart                  TEXT,
    DndEnd                    TEXT
);

INSERT INTO notification_settings (SettingId,UserId,NotifyOnComment,NotifyOnAnswer,NotifyOnBadge,NotifyOnMention,NotifyOnEdit,NotifyOnTagFollow,EmailEnabled,SmsEnabled,PushEnabled,DailyDigestEnabled,WeeklyDigestEnabled,ImmediatePush,QuietHoursStart,QuietHoursEnd,Timezone,PreferredChannel,Language,DndEnabled,DndStart,DndEnd) VALUES (1,101,1,1,1,0,0,1,1,0,1,1,0,1,'22:00','06:00','UTC','push','en',0,NULL,NULL);
INSERT INTO notification_settings (SettingId,UserId,NotifyOnComment,NotifyOnAnswer,NotifyOnBadge,NotifyOnMention,NotifyOnEdit,NotifyOnTagFollow,EmailEnabled,SmsEnabled,PushEnabled,DailyDigestEnabled,WeeklyDigestEnabled,ImmediatePush,QuietHoursStart,QuietHoursEnd,Timezone,PreferredChannel,Language,DndEnabled,DndStart,DndEnd) VALUES (2,102,0,1,0,1,1,0,0,1,1,0,0,1,'23:00','07:00','Europe/Paris','email','fr',1,'21:00','23:00');
INSERT INTO notification_settings (SettingId,UserId,NotifyOnComment,NotifyOnAnswer,NotifyOnBadge,NotifyOnMention,NotifyOnEdit,NotifyOnTagFollow,EmailEnabled,SmsEnabled,PushEnabled,DailyDigestEnabled,WeeklyDigestEnabled,ImmediatePush,QuietHoursStart,QuietHoursEnd,Timezone,PreferredChannel,Language,DndEnabled,DndStart,DndEnd) VALUES (3,103,1,0,1,1,0,1,1,0,0,1,1,0,'20:00','08:00','America/Mexico_City','sms','es',0,NULL,NULL);