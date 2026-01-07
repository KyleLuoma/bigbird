-- Broadcast schedules for matches
CREATE TABLE Broadcast_Schedules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    broadcast_network_id INTEGER,
    start_time TEXT,
    end_time TEXT,
    language TEXT,
    comment TEXT,
    hd INTEGER,
    live INTEGER,
    viewer_rating INTEGER,
    avg_viewers INTEGER,
    peak_viewers INTEGER,
    commercial_breaks INTEGER,
    ad_revenue REAL,
    streaming_platform TEXT,
    stream_quality TEXT,
    subtitles INTEGER,
    audio_channels INTEGER,
    region_code TEXT,
    timezone TEXT,
    feed_type TEXT,
    camera_count INTEGER,
    replay_available INTEGER,
    highlight_package INTEGER,
    sponsorship_overlay INTEGER,
    rating_agency TEXT,
    rating_score REAL,
    cc_available INTEGER,
    FOREIGN KEY (match_api_id) REFERENCES "Match"(match_api_id)
);

INSERT INTO Broadcast_Schedules (match_api_id,broadcast_network_id,start_time,end_time,language,comment,hd,live,viewer_rating,avg_viewers,peak_viewers,commercial_breaks,ad_revenue,streaming_platform,stream_quality,subtitles,audio_channels,region_code,timezone,feed_type,camera_count,replay_available,highlight_package,sponsorship_overlay,rating_agency,rating_score,cc_available) VALUES
(10101,1,'2025-05-01 18:00','2025-05-01 20:00','English','PrimeTimeSlot',1,1,85,1200000,1450000,4,350000.00,'StreamX','1080p',1,2,'EU','CET','Main',12,1,1,1,'ABC',9.2,1),
(10102,2,'2025-05-02 15:30','2025-05-02 17:45','Spanish','AfternoonMatch',0,1,78,950000,1100000,3,210000.00,'LiveNow','720p',0,2,'SA','ART','Secondary',8,1,1,0,'NBC',8.5,0),
(10103,3,'2025-05-03 20:15','2025-05-03 22:30','German','LateShow',1,1,92,1580000,1800000,5,480000.00,'SportCast','4K',1,6,'EU','CET','Main',14,1,1,1,'CBS',9.7,1);

-- Media coverage articles for matches
CREATE TABLE Media_Coverage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    outlet_name TEXT,
    article_title TEXT,
    author TEXT,
    publication_date TEXT,
    article_type TEXT,
    word_count INTEGER,
    sentiment_score REAL,
    url TEXT,
    headline TEXT,
    summary TEXT,
    is_exclusive INTEGER,
    regional_focus TEXT,
    language TEXT,
    audience_size INTEGER,
    engagement_score REAL,
    social_shares INTEGER,
    likes INTEGER,
    comments INTEGER,
    rating INTEGER,
    FOREIGN KEY (match_api_id) REFERENCES "Match"(match_api_id)
);

INSERT INTO Media_Coverage (match_api_id,outlet_name,article_title,author,publication_date,article_type,word_count,sentiment_score,url,headline,summary,is_exclusive,regional_focus,language,audience_size,engagement_score,social_shares,likes,comments,rating) VALUES
(10101,'GlobalSports','Thrilling comeback in the derby','John Doe','2025-05-01','MatchReport',1245,0.87,'http://globalsports.com/article10101','Derby Drama','A dramatic comeback sealed the win','1','Europe','English',850000,4.2,12500,3400,210,9),
(10102,'DailyFoot','Midfield mastery decides the game','Jane Smith','2025-05-02','Analysis',980,0.73,'http://dailyfoot.com/article10102','Midfield Mastery','Midfield dominance was key','0','South America','Spanish',620000,3.8,8900,2100,135,8),
(10103,'SportZeit','Late night goal stuns fans','Hans Muller','2025-05-03','Feature',1100,0.91,'http://sportzeit.de/article10103','Late Goal Shock','A last‑minute goal turned the tables','0','Germany','German',470000,4.5,10200,2750,190,9);

-- Social media statistics for teams per match day
CREATE TABLE Social_Media_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    platform TEXT,
    followers_before INTEGER,
    followers_after INTEGER,
    new_followers INTEGER,
    engagement_rate REAL,
    posts_made INTEGER,
    likes_received INTEGER,
    shares_received INTEGER,
    comments_received INTEGER,
    video_views INTEGER,
    story_views INTEGER,
    mentions INTEGER,
    hashtags_used INTEGER,
    top_post_id INTEGER,
    top_post_likes INTEGER,
    top_post_shares INTEGER,
    top_post_comments INTEGER,
    sentiment_avg REAL,
    reach INTEGER,
    FOREIGN KEY (team_api_id) REFERENCES Team(team_api_id)
);

INSERT INTO Social_Media_Stats (team_api_id,platform,followers_before,followers_after,new_followers,engagement_rate,posts_made,likes_received,shares_received,comments_received,video_views,story_views,mentions,hashtags_used,top_post_id,top_post_likes,top_post_shares,top_post_comments,sentiment_avg,reach) VALUES
(2001,'Twitter',150000,152400,2400,3.2,5,32000,4100,780,120000,56000,145,78,98765,9800,1200,340,0.85,800000),
(2002,'Instagram',275000,277850,2850,4.1,4,45000,6200,1020,210000,88000,210,95,123456,15000,2100,500,0.88,950000),
(2003,'Facebook',420000,422500,2500,2.9,6,38000,3000,650,175000,73000,180,65,112233,11200,1500,410,0.81,720000);

-- Player awards and recognitions
CREATE TABLE Player_Awards (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    award_name TEXT,
    year INTEGER,
    award_category TEXT,
    rank INTEGER,
    awarding_body TEXT,
    points INTEGER,
    votes INTEGER,
    ceremony_city TEXT,
    ceremony_country TEXT,
    sponsor TEXT,
    prize_money REAL,
    media_mentions INTEGER,
    social_mentions INTEGER,
    tweet_count INTEGER,
    instagram_posts INTEGER,
    youtube_views INTEGER,
    fan_votes INTEGER,
    official_rating REAL,
    notes TEXT,
    FOREIGN KEY (player_api_id) REFERENCES Player(player_api_id)
);

INSERT INTO Player_Awards (player_api_id,award_name,year,award_category,rank,awarding_body,points,votes,ceremony_city,ceremony_country,sponsor,prize_money,media_mentions,social_mentions,tweet_count,instagram_posts,youtube_views,fan_votes,official_rating,notes) VALUES
(15001,'GoldenBoot',2024,'TopScorer',1,'FIFA',150,53200,'Zurich','Switzerland','Adidas',500000.00,120,3400,56000,4300,2800000,89000,9.8,'Record tally of 28 goals'),
(15002,'BestMidfielder',2023,'Midfield',2,'UEFA',85,31200,'Paris','France','Nike',250000.00,95,2100,37000,2500,1500000,54000,9.2,'Closest race with teammate'),
(15003,'YoungPlayerAward',2025,'U21',1,'NationalLeague',70,18000,'London','England','Puma',100000.00,80,1900,25000,1800,900000,30000,9.0,'Outstanding debut season');

-- Team financial statements per fiscal year
CREATE TABLE Team_Financials (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    fiscal_year TEXT,
    revenue_total REAL,
    revenue_matchday REAL,
    revenue_broadcast REAL,
    revenue_sponsorship REAL,
    revenue_merchandise REAL,
    revenue_transfer REAL,
    expenses_total REAL,
    expenses_player_wages REAL,
    expenses_staff_wages REAL,
    expenses_stadium REAL,
    expenses_operation REAL,
    net_profit REAL,
    net_loss REAL,
    debt REAL,
    equity REAL,
    cash_on_hand REAL,
    profit_margin REAL,
    audit_firm TEXT,
    FOREIGN KEY (team_api_id) REFERENCES Team(team_api_id)
);

INSERT INTO Team_Financials (team_api_id,fiscal_year,revenue_total,revenue_matchday,revenue_broadcast,revenue_sponsorship,revenue_merchandise,revenue_transfer,expenses_total,expenses_player_wages,expenses_staff_wages,expenses_stadium,expenses_operation,net_profit,net_loss,debt,equity,cash_on_hand,profit_margin,audit_firm) VALUES
(2001,'2024-2025',124500000.00,35200000.00,40000000.00,25000000.00,15000000.00,8000000.00,98000000.00,56000000.00,15000000.00,12000000.00,2500000.00,26500000.00,0.00,20000000.00,35000000.00,12000000.00,21.3,'Deloitte'),
(2002,'2024-2025',98500000.00,28000000.00,34000000.00,21000000.00,10000000.00,5500000.00,77000000.00,44000000.00,13000000.00,9500000.00,2000000.00,21500000.00,0.00,15000000.00,26000000.00,10000000.00,21.8,'KPMG'),
(2003,'2024-2025',112300000.00,31000000.00,38000000.00,24000000.00,13000000.00,7200000.00,86000000.00,50000000.00,14000000.00,10500000.00,2150000.00,26300000.00,0.00,18000000.00,30000000.00,11500000.00,23.4,'PwC');

-- Historical league standings per matchday
CREATE TABLE League_Standings_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    matchday INTEGER,
    team_api_id INTEGER,
    position INTEGER,
    points INTEGER,
    games_played INTEGER,
    wins INTEGER,
    draws INTEGER,
    losses INTEGER,
    goals_for INTEGER,
    goals_against INTEGER,
    goal_difference INTEGER,
    clean_sheets INTEGER,
    yellow_cards INTEGER,
    red_cards INTEGER,
    fouls_committed INTEGER,
    offsides INTEGER,
    penalties_for INTEGER,
    penalties_against INTEGER,
    FOREIGN KEY (league_id) REFERENCES League(id),
    FOREIGN KEY (team_api_id) REFERENCES Team(team_api_id)
);

INSERT INTO League_Standings_History (league_id,season,matchday,team_api_id,position,points,games_played,wins,draws,losses,goals_for,goals_against,goal_difference,clean_sheets,yellow_cards,red_cards,fouls_committed,offsides,penalties_for,penalties_against) VALUES
(1,'2024/2025',5,2001,1,14,5,4,2,0,12,4,8,3,10,0,45,30,2,1),
(1,'2024/2025',5,2002,2,12,5,3,3,0,10,5,5,2,12,1,50,28,1,2),
(1,'2024/2025',5,2003,3,10,5,3,1,1,9,7,2,1,15,0,55,35,0,3);

-- Sponsor activation campaigns linked to deals
CREATE TABLE Sponsor_Activations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_deal_id INTEGER,
    team_api_id INTEGER,
    activation_type TEXT,
    start_date TEXT,
    end_date TEXT,
    regions_covered TEXT,
    activation_budget REAL,
    impressions INTEGER,
    engagements INTEGER,
    leads_generated INTEGER,
    sales_attributed REAL,
    media_spot_count INTEGER,
    events_hosted INTEGER,
    digital_campaigns INTEGER,
    social_media_posts INTEGER,
    merch_items INTEGER,
    custom_content_created INTEGER,
    ROI REAL,
    evaluation_score REAL,
    notes TEXT,
    FOREIGN KEY (team_api_id) REFERENCES Team(team_api_id)
);

INSERT INTO Sponsor_Activations (sponsor_deal_id,team_api_id,activation_type,start_date,end_date,regions_covered,activation_budget,impressions,engagements,leads_generated,sales_attributed,media_spot_count,events_hosted,digital_campaigns,social_media_posts,merch_items,custom_content_created,ROI,evaluation_score,notes) VALUES
(301,2001,'StadiumBanner','2024-08-01','2025-05-31','Europe',1500000.00,8200000,340000,12000,850000.00,240,15,8,45,3000,180,2.3,88.5,'High visibility during playoffs'),
(302,2002,'DigitalSeries','2024-09-15','2025-04-20','NorthAmerica',950000.00,5600000,210000,8000,420000.00,180,10,12,60,2100,130,1.9,81.2,'Targeted social ads'),
(303,2003,'FanEngagement','2024-07-01','2025-06-30','Asia',720000.00,4700000,190000,6000,310000.00,150,8,9,52,1800,110,2.1,85.0,'Community events and contests');

-- Transportation options for stadium attendees
CREATE TABLE Venue_Transport (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    transport_mode TEXT,
    capacity INTEGER,
    avg_travel_time_min INTEGER,
    peak_travel_time_min INTEGER,
    ticket_holder_discount INTEGER,
    fare REAL,
    distance_km REAL,
    parking_spots INTEGER,
    shuttle_buses INTEGER,
    bike_racks INTEGER,
    disabled_access INTEGER,
    security_check_time_sec INTEGER,
    crowd_control_staff INTEGER,
    signage_quality INTEGER,
    WiFi_coverage_percent INTEGER,
    emergency_exits INTEGER,
    evacuation_time_min INTEGER,
    notes TEXT,
    FOREIGN KEY (stadium_id) REFERENCES Stadium_Facilities(id)
);

INSERT INTO Venue_Transport (stadium_id,transport_mode,capacity,avg_travel_time_min,peak_travel_time_min,ticket_holder_discount,fare,distance_km,parking_spots,shuttle_buses,bike_racks,disabled_access,security_check_time_sec,crowd_control_staff,signage_quality,WiFi_coverage_percent,emergency_exits,evacuation_time_min,notes) VALUES
(10,'Metro',25000,30,45,10,2.5,12.0,1800,12,200,1,90,35,8,85,6,7,'Fast lane for season ticket holders'),
(10,'Bus',15000,45,70,5,3.0,18.5,1200,8,150,1,120,28,7,80,8,9,'Additional night service on match days'),
(10,'ParkingLot',8000,20,35,15,5.0,5.0,2500,0,0,0,60,22,9,90,10,5,'Reserved sections for VIPs');

-- Fan club engagement metrics per season
CREATE TABLE Fan_Engagement_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_club_id INTEGER,
    season TEXT,
    total_members INTEGER,
    active_members INTEGER,
    events_hosted INTEGER,
    average_attendance INTEGER,
    merchandise_sales REAL,
    online_forum_posts INTEGER,
    average_post_length INTEGER,
    poll_participation_rate REAL,
    survey_score REAL,
    loyalty_index REAL,
    churn_rate REAL,
    referral_count INTEGER,
    average_age REAL,
    gender_ratio TEXT,
    regional_distribution TEXT,
    social_media_growth REAL,
    app_downloads INTEGER,
    net_promoter_score REAL,
    FOREIGN KEY (fan_club_id) REFERENCES Fan_Club_Memberships(id)
);

INSERT INTO Fan_Engagement_Metrics (fan_club_id,season,total_members,active_members,events_hosted,average_attendance,merchandise_sales,online_forum_posts,average_post_length,poll_participation_rate,survey_score,loyalty_index,churn_rate,referral_count,average_age,gender_ratio,regional_distribution,social_media_growth,app_downloads,net_promoter_score) VALUES
(5001,'2024/2025',32000,21000,45,125,420000.00,3400,85,0.68,8.4,78.5,0.07,520,34.2,'M:F=6:4','Europe:40,Asia:35,America:25',0.12,75000,72),
(5002,'2024/2025',18500,13000,30,98,210000.00,2100,78,0.55,7.9,71.2,0.09,310,29.5,'M:F=5:5','Europe:55,America:30,Asia:15',0.15,42000,68),
(5003,'2024/2025',41000,29500,60,140,680000.00,4750,92,0.74,8.8,81.0,0.05,830,36.1,'M:F=7:3','Europe:45,Asia:40,America:15',0.10,98000,75);

-- Youth academy player progress tracking
CREATE TABLE Youth_Academy_Progress (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    season TEXT,
    player_api_id INTEGER,
    age_group TEXT,
    appearances INTEGER,
    goals INTEGER,
    assists INTEGER,
    minutes_played INTEGER,
    avg_rating REAL,
    promotion_status TEXT,
    injuries INTEGER,
    training_hours INTEGER,
    technical_score INTEGER,
    tactical_score INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    scouting_interest INTEGER,
    contract_offered INTEGER,
    next_season_plan TEXT,
    notes TEXT,
    FOREIGN KEY (academy_id) REFERENCES Team(team_api_id),
    FOREIGN KEY (player_api_id) REFERENCES Player(player_api_id)
);

INSERT INTO Youth_Academy_Progress (academy_id,season,player_api_id,age_group,appearances,goals,assists,minutes_played,avg_rating,promotion_status,injuries,training_hours,technical_score,tactical_score,physical_score,mental_score,scouting_interest,contract_offered,next_season_plan,notes) VALUES
(2001,'2024/2025',15010,'U18',22,8,5,1760,7.2,'Promoted',0,420,78,72,80,75,1,1,'FirstTeamTraining','Strong leader on the pitch'),
(2001,'2024/2025',15011,'U17',18,4,7,1440,6.9,'Stay',1,380,70,68,74,70,0,0,'ContinueU17','Minor ankle sprain recovered'),
(2002,'2024/2025',15012,'U19',25,12,9,2100,7.8,'Promoted',0,460,82,78,85,80,1,1,'LoanToLowerDivision','Top scorer of the season');