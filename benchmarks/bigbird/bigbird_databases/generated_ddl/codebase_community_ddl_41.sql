-- User social media links associated with a user
CREATE TABLE user_social_links
(
    id                     INTEGER PRIMARY KEY,
    user_id                INTEGER,
    platform               TEXT,
    profile_url            TEXT,
    username               TEXT,
    display_name           TEXT,
    created_at             DATETIME,
    updated_at             DATETIME,
    visibility             INTEGER,
    followers_count        INTEGER,
    following_count        INTEGER,
    post_count             INTEGER,
    like_count             INTEGER,
    bio                    TEXT,
    location               TEXT,
    verified               INTEGER,
    privacy_setting        INTEGER,
    integration_status     INTEGER,
    last_synced            DATETIME,
    source                 TEXT
);

INSERT INTO user_social_links (id,user_id,platform,profile_url,username,display_name,created_at,updated_at,visibility,followers_count,following_count,post_count,like_count,bio,location,verified,privacy_setting,integration_status,last_synced,source) VALUES (1,101,'Twitter','https://twitter.com/user101','user101','User OneZeroOne','2023-01-01 08:00:00','2023-01-10 09:15:00',1,150,75,20,40,'Tech enthusiast','New York',1,0,1,'2023-01-12 10:00:00','OAuth');
INSERT INTO user_social_links (id,user_id,platform,profile_url,username,display_name,created_at,updated_at,visibility,followers_count,following_count,post_count,like_count,bio,location,verified,privacy_setting,integration_status,last_synced,source) VALUES (2,102,'LinkedIn','https://linkedin.com/in/user102','user102','User OneZeroTwo','2023-02-05 12:30:00','2023-02-20 14:45:00',0,300,180,45,120,'Data analyst','Chicago',0,1,0,'2023-02-25 16:20:00','APIKey');
INSERT INTO user_social_links (id,user_id,platform,profile_url,username,display_name,created_at,updated_at,visibility,followers_count,following_count,post_count,like_count,bio,location,verified,privacy_setting,integration_status,last_synced,source) VALUES (3,103,'GitHub','https://github.com/user103','user103','User OneZeroThree','2023-03-10 07:45:00','2023-03-15 08:30:00',1,500,250,100,250,'Open source contributor','San Francisco',1,0,1,'2023-03-18 09:10:00','OAuth');

-- Collaboration information for posts edited by multiple users
CREATE TABLE post_collaborators
(
    id                         INTEGER PRIMARY KEY,
    post_id                    INTEGER,
    user_id                    INTEGER,
    role                       TEXT,
    added_at                   DATETIME,
    removed_at                 DATETIME,
    contribution_percent       INTEGER,
    edit_count                 INTEGER,
    comments_made              INTEGER,
    approvals                  INTEGER,
    rejections                 INTEGER,
    last_activity              DATETIME,
    is_primary                 INTEGER,
    notification_preference    INTEGER,
    access_level               INTEGER,
    assigned_by                INTEGER,
    notes                      TEXT,
    sync_status                INTEGER,
    external_id                TEXT,
    version                    INTEGER
);

INSERT INTO post_collaborators (id,post_id,user_id,role,added_at,removed_at,contribution_percent,edit_count,comments_made,approvals,rejections,last_activity,is_primary,notification_preference,access_level,assigned_by,notes,sync_status,external_id,version) VALUES (1,201,101,'Editor','2023-04-01 10:00:00',NULL,60,12,5,8,0,'2023-04-05 12:30:00',1,1,3,100,'Main editor',1,'EXT001',2);
INSERT INTO post_collaborators (id,post_id,user_id,role,added_at,removed_at,contribution_percent,edit_count,comments_made,approvals,rejections,last_activity,is_primary,notification_preference,access_level,assigned_by,notes,sync_status,external_id,version) VALUES (2,202,102,'Reviewer','2023-04-02 11:15:00',NULL,30,4,2,5,1,'2023-04-06 13:45:00',0,0,2,101,'Second reviewer',0,'EXT002',1);
INSERT INTO post_collaborators (id,post_id,user_id,role,added_at,removed_at,contribution_percent,edit_count,comments_made,approvals,rejections,last_activity,is_primary,notification_preference,access_level,assigned_by,notes,sync_status,external_id,version) VALUES (3,203,103,'Contributor','2023-04-03 09:20:00','2023-04-10 14:00:00',10,2,1,2,0,'2023-04-09 16:10:00',0,1,1,102,'Minor edits',1,'EXT003',1);

-- Line items for advertiser invoices
CREATE TABLE advertiser_invoice_items
(
    id                      INTEGER PRIMARY KEY,
    invoice_id              INTEGER,
    line_number             INTEGER,
    description             TEXT,
    quantity                INTEGER,
    unit_price              NUMERIC,
    tax_amount              NUMERIC,
    discount_amount         NUMERIC,
    total_amount            NUMERIC,
    currency                TEXT,
    service_start_date      DATE,
    service_end_date        DATE,
    created_at              DATETIME,
    updated_at              DATETIME,
    created_by              INTEGER,
    approved_by             INTEGER,
    status                  TEXT,
    product_code            TEXT,
    campaign_id             INTEGER,
    notes                   TEXT
);

INSERT INTO advertiser_invoice_items (id,invoice_id,line_number,description,quantity,unit_price,tax_amount,discount_amount,total_amount,currency,service_start_date,service_end_date,created_at,updated_at,created_by,approved_by,status,product_code,campaign_id,notes) VALUES (1,301,1,'Banner impression',10000,0.05,250,0,750,USD,'2023-05-01','2023-05-31','2023-04-20 08:00:00','2023-04-21 09:30:00',200,201,'Pending','BNR001',401,'High traffic period');
INSERT INTO advertiser_invoice_items (id,invoice_id,line_number,description,quantity,unit_price,tax_amount,discount_amount,total_amount,currency,service_start_date,service_end_date,created_at,updated_at,created_by,approved_by,status,product_code,campaign_id,notes) VALUES (2,301,2,'Video ad slot',50,200,500,1000,10400,USD,'2023-05-01','2023-05-31','2023-04-20 08:05:00','2023-04-21 09:35:00',200,202,'Approved','VID020',401,'Prime time');
INSERT INTO advertiser_invoice_items (id,invoice_id,line_number,description,quantity,unit_price,tax_amount,discount_amount,total_amount,currency,service_start_date,service_end_date,created_at,updated_at,created_by,approved_by,status,product_code,campaign_id,notes) VALUES (3,302,1,'Sponsored post',10,500,250,0,5250,USD,'2023-06-01','2023-06-15','2023-05-10 10:10:00','2023-05-11 11:20:00',203,204,'Pending','SP001',402,'Featured article');

-- Locale configuration per region
CREATE TABLE regional_content_locales
(
    id                     INTEGER PRIMARY KEY,
    region_code            TEXT,
    locale_code            TEXT,
    language_name          TEXT,
    native_name            TEXT,
    is_default             INTEGER,
    created_at             DATETIME,
    updated_at             DATETIME,
    fallback_locale        TEXT,
    content_version        INTEGER,
    translation_status     INTEGER,
    last_translation_date  DATETIME,
    translator_id          INTEGER,
    approval_status        INTEGER,
    notes                  TEXT,
    character_set          TEXT,
    text_direction         TEXT,
    rtl_supported          INTEGER,
    region_population      INTEGER,
    region_gdp             NUMERIC
);

INSERT INTO regional_content_locales (id,region_code,locale_code,language_name,native_name,is_default,created_at,updated_at,fallback_locale,content_version,translation_status,last_translation_date,translator_id,approval_status,notes,character_set,text_direction,rtl_supported,region_population,region_gdp) VALUES (1,'US','en-US','English','English',1,'2023-01-01 00:00:00','2023-01-02 00:00:00','en-GB',5,2,'2023-01-10 12:00:00',300,1,'Primary locale','UTF-8','LTR',0,330000000,21000.5);
INSERT INTO regional_content_locales (id,region_code,locale_code,language_name,native_name,is_default,created_at,updated_at,fallback_locale,content_version,translation_status,last_translation_date,translator_id,approval_status,notes,character_set,text_direction,rtl_supported,region_population,region_gdp) VALUES (2,'FR','fr-FR','French','Français',1,'2023-02-01 00:00:00','2023-02-02 00:00:00','en-US',5,2,'2023-02-12 13:30:00',301,1,'Standard locale','UTF-8','LTR',0,67000000,2700.3);
INSERT INTO regional_content_locales (id,region_code,locale_code,language_name,native_name,is_default,created_at,updated_at,fallback_locale,content_version,translation_status,last_translation_date,translator_id,approval_status,notes,character_set,text_direction,rtl_supported,region_population,region_gdp) VALUES (3,'AE','ar-AE','Arabic','العربية',0,'2023-03-01 00:00:00','2023-03-02 00:00:00','en-US',4,1,'2023-03-15 09:45:00',302,0,'Arabic locale','UTF-8','RTL',1,9700000,421.7);

-- Properties attached to knowledge graph nodes
CREATE TABLE knowledge_graph_node_properties
(
    id                  INTEGER PRIMARY KEY,
    node_id             INTEGER,
    property_name       TEXT,
    property_value      TEXT,
    value_type          TEXT,
    created_at          DATETIME,
    updated_at          DATETIME,
    source_system       TEXT,
    confidence_score    NUMERIC,
    is_active           INTEGER,
    effective_start     DATETIME,
    effective_end       DATETIME,
    last_checked        DATETIME,
    reviewer_id         INTEGER,
    change_log          TEXT,
    ontology_version    INTEGER,
    is_deprecated       INTEGER,
    related_node_id     INTEGER,
    relationship_type   TEXT,
    notes               TEXT
);

INSERT INTO knowledge_graph_node_properties (id,node_id,property_name,property_value,value_type,created_at,updated_at,source_system,confidence_score,is_active,effective_start,effective_end,last_checked,reviewer_id,change_log,ontology_version,is_deprecated,related_node_id,relationship_type,notes) VALUES (1,4001,'title','Quantum Computing','string','2023-04-01 10:00:00','2023-04-05 12:00:00','KGImport',0.95,1,'2023-04-01 00:00:00',NULL,'2023-04-06 08:00:00',500,'Added title field',2,0,4002,'relatedTo','Initial import');
INSERT INTO knowledge_graph_node_properties (id,node_id,property_name,property_value,value_type,created_at,updated_at,source_system,confidence_score,is_active,effective_start,effective_end,last_checked,reviewer_id,change_log,ontology_version,is_deprecated,related_node_id,relationship_type,notes) VALUES (2,4002,'category','Physics','string','2023-04-02 11:00:00','2023-04-06 13:00:00','ManualEntry',0.98,1,'2023-04-02 00:00:00',NULL,'2023-04-07 09:30:00',501,'Set category',2,0,4003,'subClassOf','Reviewed');
INSERT INTO knowledge_graph_node_properties (id,node_id,property_name,property_value,value_type,created_at,updated_at,source_system,confidence_score,is_active,effective_start,effective_end,last_checked,reviewer_id,change_log,ontology_version,is_deprecated,related_node_id,relationship_type,notes) VALUES (3,4003,'status','Deprecated','string','2023-04-03 12:00:00','2023-04-08 14:00:00','SystemUpdate',0.85,0,'2023-04-03 00:00:00','2023-05-01 00:00:00','2023-04-09 10:15:00',502,'Marked deprecated',2,1,NULL,'',NULL);

-- Participation metrics for users in forum threads
CREATE TABLE forum_thread_participation
(
    id                        INTEGER PRIMARY KEY,
    thread_id                 INTEGER,
    user_id                   INTEGER,
    first_post_at             DATETIME,
    last_post_at              DATETIME,
    post_count                INTEGER,
    comment_count             INTEGER,
    like_received             INTEGER,
    like_given                INTEGER,
    rank                      INTEGER,
    is_moderator             INTEGER,
    reputation_earned         INTEGER,
    penalties                 INTEGER,
    last_view_at              DATETIME,
    view_count                INTEGER,
    subscription_status       INTEGER,
    notifications_enabled     INTEGER,
    time_spent_seconds       INTEGER,
    badges_earned             TEXT,
    notes                     TEXT
);

INSERT INTO forum_thread_participation (id,thread_id,user_id,first_post_at,last_post_at,post_count,comment_count,like_received,like_given,rank,is_moderator,reputation_earned,penalties,last_view_at,view_count,subscription_status,notifications_enabled,time_spent_seconds,badges_earned,notes) VALUES (1,501,101,'2023-05-01 08:00:00','2023-05-10 12:30:00',5,2,20,10,1,0,150,0,'2023-05-11 09:00:00',45,1,1,3600,'GoldBadge','Active participant');
INSERT INTO forum_thread_participation (id,thread_id,user_id,first_post_at,last_post_at,post_count,comment_count,like_received,like_given,rank,is_moderator,reputation_earned,penalties,last_view_at,view_count,subscription_status,notifications_enabled,time_spent_seconds,badges_earned,notes) VALUES (2,501,102,'2023-05-02 09:15:00','2023-05-12 13:45:00',3,5,15,8,2,0,120,1,'2023-05-13 10:20:00',30,0,1,2700,'SilverBadge','Received a penalty for spam');
INSERT INTO forum_thread_participation (id,thread_id,user_id,first_post_at,last_post_at,post_count,comment_count,like_received,like_given,rank,is_moderator,reputation_earned,penalties,last_view_at,view_count,subscription_status,notifications_enabled,time_spent_seconds,badges_earned,notes) VALUES (3,502,103,'2023-05-03 10:30:00','2023-05-15 15:00:00',7,1,35,20,1,1,200,0,'2023-05-16 11:45:00',60,1,0,5400,'PlatinumBadge','Moderator');

-- Feature requests submitted by users
CREATE TABLE site_feature_requests
(
    id                      INTEGER PRIMARY KEY,
    user_id                 INTEGER,
    feature_title           TEXT,
    description             TEXT,
    status                  TEXT,
    priority                INTEGER,
    submitted_at            DATETIME,
    updated_at              DATETIME,
    votes                   INTEGER,
    comments                INTEGER,
    target_release          TEXT,
    category                TEXT,
    complexity_score        NUMERIC,
    estimated_effort_hours  INTEGER,
    assigned_to             INTEGER,
    resolution              TEXT,
    closed_at               DATETIME,
    implementation_notes    TEXT,
    stakeholder_group       TEXT,
    satisfaction_score      INTEGER
);

INSERT INTO site_feature_requests (id,user_id,feature_title,description,status,priority,submitted_at,updated_at,votes,comments,target_release,category,complexity_score,estimated_effort_hours,assigned_to,resolution,closed_at,implementation_notes,stakeholder_group,satisfaction_score) VALUES (1,101,'Dark Mode','Add an optional dark theme for the site','Open',2,'2023-06-01 09:00:00','2023-06-05 10:15:00',120,30,'v2.0','UI',3.5,80,200,'Planned','2023-09-01 00:00:00','Design mockups approved','DesignTeam',NULL);
INSERT INTO site_feature_requests (id,user_id,feature_title,description,status,priority,submitted_at,updated_at,votes,comments,target_release,category,complexity_score,estimated_effort_hours,assigned_to,resolution,closed_at,implementation_notes,stakeholder_group,satisfaction_score) VALUES (2,102,'Bulk Edit Posts','Allow moderators to edit multiple posts at once','InProgress',1,'2023-06-10 11:30:00','2023-07-01 14:45:00',85,20,'v2.1','Moderation',4.2,120,201,'Under Development',NULL,'API endpoints being defined','ModerationTeam',NULL);
INSERT INTO site_feature_requests (id,user_id,feature_title,description,status,priority,submitted_at,updated_at,votes,comments,target_release,category,complexity_score,estimated_effort_hours,assigned_to,resolution,closed_at,implementation_notes,stakeholder_group,satisfaction_score) VALUES (3,103,'Export Data','Enable users to export their data in JSON','Closed',3,'2023-05-20 08:20:00','2023-06-15 09:40:00',200,45,'v2.0','Data',2.8,60,202,'Completed','2023-07-10 00:00:00','Export feature live','ProductTeam',5);

-- Content access restrictions configuration
CREATE TABLE content_access_restrictions
(
    id                    INTEGER PRIMARY KEY,
    content_id            INTEGER,
    restriction_type      TEXT,
    start_date            DATE,
    end_date              DATE,
    allowed_user_group    TEXT,
    max_views             INTEGER,
    view_count            INTEGER,
    created_at            DATETIME,
    updated_at            DATETIME,
    created_by            INTEGER,
    approved_by           INTEGER,
    status                TEXT,
    notes                 TEXT,
    geo_limit             TEXT,
    device_limit          TEXT,
    time_of_day_start    TEXT,
    time_of_day_end      TEXT,
    ip_range              TEXT,
    enforcement_method    TEXT
);

INSERT INTO content_access_restrictions (id,content_id,restriction_type,start_date,end_date,allowed_user_group,max_views,view_count,created_at,updated_at,created_by,approved_by,status,notes,geo_limit,device_limit,time_of_day_start,time_of_day_end,ip_range,enforcement_method) VALUES (1,601,'AgeGate','2023-07-01','2024-07-01','All',NULL,NULL,'2023-06-20 08:00:00','2023-06-21 09:00:00',300,301,'Active','Require users to be 18+','US,CA,UK','Any','08:00','20:00','0.0.0.0/0','ServerSide');
INSERT INTO content_access_restrictions (id,content_id,restriction_type,start_date,end_date,allowed_user_group,max_views,view_count,created_at,updated_at,created_by,approved_by,status,notes,geo_limit,device_limit,time_of_day_start,time_of_day_end,ip_range,enforcement_method) VALUES (2,602,'RegionLock','2023-08-01','2024-08-01','PremiumMembers',500,120,'2023-07-15 10:30:00','2023-07-16 11:45:00',302,303,'Active','Only accessible from EU','EU','Desktop','09:00','18:00','192.168.1.0/24','ClientSide');
INSERT INTO content_access_restrictions (id,content_id,restriction_type,start_date,end_date,allowed_user_group,max_views,view_count,created_at,updated_at,created_by,approved_by,status,notes,geo_limit,device_limit,time_of_day_start,time_of_day_end,ip_range,enforcement_method) VALUES (3,603,'LoginRequired','2023-09-01','2025-09-01','Registered',NULL,NULL,'2023-08-20 12:00:00','2023-08-21 13:15:00',304,305,'Pending','User must be logged in','All','Mobile','00:00','23:59','0.0.0.0/0','Mixed');

-- Log of API client credential changes
CREATE TABLE api_client_credentials_log
(
    id                INTEGER PRIMARY KEY,
    client_id         INTEGER,
    credential_type   TEXT,
    credential_value  TEXT,
    issued_at         DATETIME,
    expires_at        DATETIME,
    revoked_at        DATETIME,
    issued_by         INTEGER,
    revoked_by        INTEGER,
    reason            TEXT,
    scope             TEXT,
    usage_limit       INTEGER,
    usage_count       INTEGER,
    last_used         DATETIME,
    ip_address        TEXT,
    user_agent        TEXT,
    status            TEXT,
    notes             TEXT,
    rotation_cycle    INTEGER,
    audit_hash        TEXT
);

INSERT INTO api_client_credentials_log (id,client_id,credential_type,credential_value,issued_at,expires_at,revoked_at,issued_by,revoked_by,reason,scope,usage_limit,usage_count,last_used,ip_address,user_agent,status,notes,rotation_cycle,audit_hash) VALUES (1,701,'APIKey','key-abc123','2023-01-01 00:00:00','2024-01-01 00:00:00',NULL,400,NULL,'Initial issuance','read,write',10000,250,'2023-07-15 12:00:00','203.0.113.5','Mozilla/5.0','Active','First key','1','hash001');
INSERT INTO api_client_credentials_log (id,client_id,credential_type,credential_value,issued_at,expires_at,revoked_at,issued_by,revoked_by,reason,scope,usage_limit,usage_count,last_used,ip_address,user_agent,status,notes,rotation_cycle,audit_hash) VALUES (2,702,'OAuthToken','token-xyz789','2023-03-15 08:30:00','2023-09-15 08:30:00','2023-08-01 09:00:00',401,402,'Compromised','read',5000,4500,'2023-08-01 08:45:00','198.51.100.10','PostmanRuntime/7.28','Revoked','Token rotation required','2','hash002');
INSERT INTO api_client_credentials_log (id,client_id,credential_type,credential_value,issued_at,expires_at,revoked_at,issued_by,revoked_by,reason,scope,usage_limit,usage_count,last_used,ip_address,user_agent,status,notes,rotation_cycle,audit_hash) VALUES (3,703,'Certificate','cert-112233','2023-05-20 14:00:00','2025-05-20 14:00:00',NULL,403,NULL,'Routine renewal','read,write,admin',20000,5000,'2023-07-20 10:15:00','192.0.2.45','curl/7.68.0','Active','Renewal scheduled','1','hash003');

-- Milestones within learning paths
CREATE TABLE learning_path_milestones
(
    id                 INTEGER PRIMARY KEY,
    learning_path_id   INTEGER,
    milestone_order    INTEGER,
    title              TEXT,
    description        TEXT,
    required_score     INTEGER,
    max_score          INTEGER,
    is_required        INTEGER,
    unlock_date        DATE,
    due_date           DATE,
    created_at         DATETIME,
    updated_at         DATETIME,
    created_by         INTEGER,
    updated_by         INTEGER,
    status             TEXT,
    completion_date    DATETIME,
    badge_awarded      TEXT,
    resource_link      TEXT,
    assessment_id      INTEGER,
    notes              TEXT
);

INSERT INTO learning_path_milestones (id,learning_path_id,milestone_order,title,description,required_score,max_score,is_required,unlock_date,due_date,created_at,updated_at,created_by,updated_by,status,completion_date,badge_awarded,resource_link,assessment_id,notes) VALUES (1,801,1,'Introduction','Basics of the course',70,100,1,'2023-09-01','2023-09-15','2023-08-20 09:00:00','2023-08-25 10:00:00',500,501,'Pending',NULL,'IntroBadge','https://example.com/intro','901','First milestone');
INSERT INTO learning_path_milestones (id,learning_path_id,milestone_order,title,description,required_score,max_score,is_required,unlock_date,due_date,created_at,updated_at,created_by,updated_by,status,completion_date,badge_awarded,resource_link,assessment_id,notes) VALUES (2,801,2,'Intermediate','Core concepts',80,100,1,'2023-09-16','2023-09-30','2023-09-01 11:00:00','2023-09-05 12:00:00',502,503,'InProgress',NULL,'InterBadge','https://example.com/intermediate','902','Second milestone');
INSERT INTO learning_path_milestones (id,learning_path_id,milestone_order,title,description,required_score,max_score,is_required,unlock_date,due_date,created_at,updated_at,created_by,updated_by,status,completion_date,badge_awarded,resource_link,assessment_id,notes) VALUES (3,801,3,'Advanced','Advanced topics',90,100,1,'2023-10-01','2023-10-15','2023-09-20 14:30:00','2023-09-25 15:45:00',504,505,'Pending',NULL,'AdvBadge','https://example.com/advanced','903','Final milestone');