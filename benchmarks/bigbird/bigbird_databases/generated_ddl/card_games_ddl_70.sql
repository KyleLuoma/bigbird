-- Card rarity distribution per set
CREATE TABLE card_rarity_distribution (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    rarity TEXT,
    total_cards INTEGER,
    unique_cards INTEGER,
    avg_price REAL,
    median_price REAL,
    price_stddev REAL,
    market_cap REAL,
    release_year INTEGER,
    region TEXT,
    source TEXT,
    last_updated DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    data_source_url TEXT,
    currency TEXT,
    price_change_30d REAL,
    price_change_90d REAL
);

INSERT INTO card_rarity_distribution (id,set_code,rarity,total_cards,unique_cards,avg_price,median_price,price_stddev,market_cap,release_year,region,source,last_updated,notes,created_at,updated_at,data_source_url,currency,price_change_30d,price_change_90d) VALUES (1,'KHM','rare',120,115,3.5,3.2,0.4,420.0,2022,'NA','scryfall','2022-07-01','initial load','2022-06-01','2022-07-01','http://example.com/khm_rare','USD',5.2,12.8);
INSERT INTO card_rarity_distribution (id,set_code,rarity,total_cards,unique_cards,avg_price,median_price,price_stddev,market_cap,release_year,region,source,last_updated,notes,created_at,updated_at,data_source_url,currency,price_change_30d,price_change_90d) VALUES (2,'STX','mythic',35,30,45.0,44.5,2.1,1575.0,2023,'EU','mtgjson','2023-02-15','mythic stats','2023-01-20','2023-02-16','http://example.com/stx_mythic','EUR',8.4,20.1);
INSERT INTO card_rarity_distribution (id,set_code,rarity,total_cards,unique_cards,avg_price,median_price,price_stddev,market_cap,release_year,region,source,last_updated,notes,created_at,updated_at,data_source_url,currency,price_change_30d,price_change_90d) VALUES (3,'ZNR','common',250,240,0.12,0.1,0.02,30.0,2021,'AS','scryfall','2021-09-10','common baseline','2021-08-01','2021-09-11','http://example.com/znr_common','USD',1.5,3.9);

-- Deck build metrics
CREATE TABLE deck_build_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    deck_id TEXT,
    player_id TEXT,
    total_cards INTEGER,
    unique_cards INTEGER,
    avg_cmc REAL,
    median_cmc REAL,
    color_balance TEXT,
    mana_curve TEXT,
    synergy_score REAL,
    win_rate REAL,
    primary_color TEXT,
    secondary_color TEXT,
    created_at DATE,
    updated_at DATE,
    source_system TEXT,
    notes TEXT,
    version INTEGER,
    deck_name TEXT,
    tournament_qualified INTEGER,
    average_game_length REAL
);

INSERT INTO deck_build_metrics (id,deck_id,player_id,total_cards,unique_cards,avg_cmc,median_cmc,color_balance,mana_curve,synergy_score,win_rate,primary_color,secondary_color,created_at,updated_at,source_system,notes,version,deck_name,tournament_qualified,average_game_length) VALUES (1,'D001','P1001',60,55,2.8,3,'balanced','smooth',78.5,0.62,'blue','white','2022-05-01','2022-05-10','deckbuilder','first version',1,'StormControl',1,35.4);
INSERT INTO deck_build_metrics (id,deck_id,player_id,total_cards,unique_cards,avg_cmc,median_cmc,color_balance,mana_curve,synergy_score,win_rate,primary_color,secondary_color,created_at,updated_at,source_system,notes,version,deck_name,tournament_qualified,average_game_length) VALUES (2,'D002','P1002',58,50,3.1,3,'aggressive','spike',65.2,0.48,'red','black','2022-06-12','2022-06-20','deckbuilder','adjusted after meta',2,'FlameRage',0,29.1);
INSERT INTO deck_build_metrics (id,deck_id,player_id,total_cards,unique_cards,avg_cmc,median_cmc,color_balance,mana_curve,synergy_score,win_rate,primary_color,secondary_color,created_at,updated_at,source_system,notes,version,deck_name,tournament_qualified,average_game_length) VALUES (3,'D003','P1003',62,60,2.5,2,'control','ramp',82.0,0.71,'green','blue','2022-07-08','2022-07-15','deckbuilder','optimized for late game',3,'GrowthDomain',1,38.7);

-- Player crafting inventory
CREATE TABLE player_crafting_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id TEXT,
    artifact_id TEXT,
    artifact_name TEXT,
    craft_date DATE,
    quantity INTEGER,
    rarity TEXT,
    base_material TEXT,
    infused_element TEXT,
    durability INTEGER,
    level INTEGER,
    location TEXT,
    owner_notes TEXT,
    created_at DATE,
    updated_at DATE,
    source TEXT,
    market_value REAL,
    last_trade_date DATE,
    trade_count INTEGER,
    status TEXT,
    expiration_date DATE
);

INSERT INTO player_crafting_inventory (id,player_id,artifact_id,artifact_name,craft_date,quantity,rarity,base_material,infused_element,durability,level,location,owner_notes,created_at,updated_at,source,market_value,last_trade_date,trade_count,status,expiration_date) VALUES (1,'P1001','A001','ArcaneScepter','2022-04-15',1,'mythic','silver','mana',100,5,'forge','kept for tournaments','2022-04-16','2022-04-20','crafting','150.0','2022-05-01',2,'active','2025-04-15');
INSERT INTO player_crafting_inventory (id,player_id,artifact_id,artifact_name,craft_date,quantity,rarity,base_material,infused_element,durability,level,location,owner_notes,created_at,updated_at,source,market_value,last_trade_date,trade_count,status,expiration_date) VALUES (2,'P1002','A002','FlameAmulet','2022-06-10',2,'rare','gold','fire',80,3,'lab','tradeable after season','2022-06-11','2022-06-18','crafting','45.0','2022-07-02',1,'active','2024-06-10');
INSERT INTO player_crafting_inventory (id,player_id,artifact_id,artifact_name,craft_date,quantity,rarity,base_material,infused_element,durability,level,location,owner_notes,created_at,updated_at,source,market_value,last_trade_date,trade_count,status,expiration_date) VALUES (3,'P1003','A003','VoidMirror','2022-08-01',1,'mythic','obsidian','void',120,7,'vault','display only','2022-08-02','2022-08-05','crafting','300.0','2022-09-01',0,'sealed','2026-08-01');

-- MTG concept artifacts
CREATE TABLE mtg_concept_artifacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    concept_name TEXT,
    description TEXT,
    creator TEXT,
    creation_date DATE,
    related_set_code TEXT,
    artwork_url TEXT,
    theme TEXT,
    element_type TEXT,
    power_level INTEGER,
    rarity TEXT,
    status TEXT,
    review_score REAL,
    review_comments TEXT,
    approved_by TEXT,
    approval_date DATE,
    version INTEGER,
    tags TEXT,
    notes TEXT,
    source_document TEXT,
    last_modified DATE
);

INSERT INTO mtg_concept_artifacts (id,concept_name,description,creator,creation_date,related_set_code,artwork_url,theme,element_type,power_level,rarity,status,review_score,review_comments,approved_by,approval_date,version,tags,notes,source_document,last_modified) VALUES (1,'Eternal Flame','A burning artifact that fuels spells','Alice','2021-03-10','M21','http://art.example.com/eternal_flame.png','fire','artifact',8,'mythic','approved',9.2,'high impact','Bob','2021-04-01',1,'fire,artifact','no notes','design_doc_001','2021-04-02');
INSERT INTO mtg_concept_artifacts (id,concept_name,description,creator,creation_date,related_set_code,artwork_url,theme,element_type,power_level,rarity,status,review_score,review_comments,approved_by,approval_date,version,tags,notes,source_document,last_modified) VALUES (2,'Mystic Lens','Grants vision of hidden truths','Charlie','2022-01-20','ZNR','http://art.example.com/mystic_lens.png','mystic','artifact',5,'rare','pending',7.5,'needs balance','',NULL,1,'vision,artifact','awaiting review','design_doc_045','2022-01-21');
INSERT INTO mtg_concept_artifacts (id,concept_name,description,creator,creation_date,related_set_code,artwork_url,theme,element_type,power_level,rarity,status,review_score,review_comments,approved_by,approval_date,version,tags,notes,source_document,last_modified) VALUES (3,'Titanic Anchor','Stabilizes battlefield','Dana','2020-11-05','KHM','http://art.example.com/titanic_anchor.png','earth','artifact',9,'mythic','approved',8.8,'well received','Eve','2020-11-30',2,'anchor,artifact','finalized','design_doc_078','2020-12-01');

-- Global tournament league
CREATE TABLE global_tournament_league (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_name TEXT,
    season_year INTEGER,
    region TEXT,
    total_prize_pool REAL,
    number_of_events INTEGER,
    start_date DATE,
    end_date DATE,
    ranking_method TEXT,
    points_per_win INTEGER,
    points_per_draw INTEGER,
    points_per_loss INTEGER,
    top_player_id TEXT,
    top_player_points INTEGER,
    sponsor_name TEXT,
    broadcast_partner TEXT,
    official_website TEXT,
    logo_url TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO global_tournament_league (id,league_name,season_year,region,total_prize_pool,number_of_events,start_date,end_date,ranking_method,points_per_win,points_per_draw,points_per_loss,top_player_id,top_player_points,sponsor_name,broadcast_partner,official_website,logo_url,created_at,updated_at,notes) VALUES (1,'World Magic League',2022,'Global',2500000,30,'2022-01-01','2022-12-31','ELO',3,1,0,'P2001',1050,'MagicCo','StreamHub','http://worldmagicleague.com','http://images.example.com/logo.png','2021-12-01','2022-01-02','first season');
INSERT INTO global_tournament_league (id,league_name,season_year,region,total_prize_pool,number_of_events,start_date,end_date,ranking_method,points_per_win,points_per_draw,points_per_loss,top_player_id,top_player_points,sponsor_name,broadcast_partner,official_website,logo_url,created_at,updated_at,notes) VALUES (2,'Euro Magic Circuit',2023,'EU',1200000,20,'2023-02-01','2023-11-30','Points',2,0,0,'P2005',780,'EuroGames','EuroStream','http://euromagiccircuit.eu','http://images.example.com/euro_logo.png','2022-12-15','2023-02-02','expanded to 10 new venues');
INSERT INTO global_tournament_league (id,league_name,season_year,region,total_prize_pool,number_of_events,start_date,end_date,ranking_method,points_per_win,points_per_draw,points_per_loss,top_player_id,top_player_points,sponsor_name,broadcast_partner,official_website,logo_url,created_at,updated_at,notes) VALUES (3,'Asia Pacific Clash',2023,'APAC',900000,15,'2023-03-10','2023-10-20','ELO',3,1,0,'P2009',860,'APACGames','StreamAsia','http://apacclash.com','http://images.example.com/apac_logo.png','2023-01-20','2023-03-11','introducing online qualifiers');

-- Mana curve statistics
CREATE TABLE mana_curve_statistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    cmc INTEGER,
    card_count INTEGER,
    avg_power REAL,
    avg_toughness REAL,
    avg_loyalty REAL,
    rarity_distribution TEXT,
    color_distribution TEXT,
    total_price REAL,
    median_price REAL,
    price_stddev REAL,
    created_at DATE,
    updated_at DATE,
    source_system TEXT,
    notes TEXT,
    data_snapshot_id TEXT,
    market_trend REAL,
    volatility REAL,
    currency TEXT,
    region TEXT
);

INSERT INTO mana_curve_statistics (id,set_code,cmc,card_count,avg_power,avg_toughness,avg_loyalty,rarity_distribution,color_distribution,total_price,median_price,price_stddev,created_at,updated_at,source_system,notes,data_snapshot_id,market_trend,volatility,currency,region) VALUES (1,'KHM',2,45,3.2,2.8,0.0,'common:30,uncommon:10,rare:5','blue:20,red:25',75.0,1.4,0.3,'2022-06-01','2022-06-02','analytics','baseline','snap001',1.5,0.2,'USD','NA');
INSERT INTO mana_curve_statistics (id,set_code,cmc,card_count,avg_power,avg_toughness,avg_loyalty,rarity_distribution,color_distribution,total_price,median_price,price_stddev,created_at,updated_at,source_system,notes,data_snapshot_id,market_trend,volatility,currency,region) VALUES (2,'STX',4,30,5.0,5.5,0.0,'rare:20,mithic:10','green:15,black:15',210.0,7.0,1.1,'2023-01-15','2023-01-16','analytics','midrange','snap015',2.2,0.35,'EUR','EU');
INSERT INTO mana_curve_statistics (id,set_code,cmc,card_count,avg_power,avg_toughness,avg_loyalty,rarity_distribution,color_distribution,total_price,median_price,price_stddev,created_at,updated_at,source_system,notes,data_snapshot_id,market_trend,volatility,currency,region) VALUES (3,'ZNR',1,60,1.8,1.5,0.0,'common:50,uncommon:10','white:20,blue:20,red:20',45.0,0.8,0.15,'2021-09-05','2021-09-06','analytics','early game','snap090',0.9,0.12,'USD','AS');

-- Set release impact
CREATE TABLE set_release_impact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    release_date DATE,
    initial_market_cap REAL,
    weekly_growth_percent REAL,
    peak_price REAL,
    average_price REAL,
    total_sales INTEGER,
    primary_region TEXT,
    secondary_region TEXT,
    promotional_campaign TEXT,
    media_coverage_score REAL,
    social_media_mentions INTEGER,
    influencer_score REAL,
    fan_sentiment_score REAL,
    reviews_count INTEGER,
    average_review_score REAL,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    data_source TEXT
);

INSERT INTO set_release_impact (id,set_code,release_date,initial_market_cap,weekly_growth_percent,peak_price,average_price,total_sales,primary_region,secondary_region,promotional_campaign,media_coverage_score,social_media_mentions,influencer_score,fan_sentiment_score,reviews_count,average_review_score,created_at,updated_at,notes,data_source) VALUES (1,'KHM','2022-04-29',500000,12.5,15.0,8.2,200000,'NA','EU','SpringBoost',8.7,12000,9.1,85.0,340,'4.2','2022-05-01','2022-05-10','strong opening','scryfall');
INSERT INTO set_release_impact (id,set_code,release_date,initial_market_cap,weekly_growth_percent,peak_price,average_price,total_sales,primary_region,secondary_region,promotional_campaign,media_coverage_score,social_media_mentions,influencer_score,fan_sentiment_score,reviews_count,average_review_score,created_at,updated_at,notes,data_source) VALUES (2,'STX','2023-02-03',300000,9.3,12.5,6.8,150000,'EU','AS','WinterWave',7.9,9500,8.5,78.5,210,'3.9','2023-02-05','2023-02-12','moderate success','mtgjson');
INSERT INTO set_release_impact (id,set_code,release_date,initial_market_cap,weekly_growth_percent,peak_price,average_price,total_sales,primary_region,secondary_region,promotional_campaign,media_coverage_score,social_media_mentions,influencer_score,fan_sentiment_score,reviews_count,average_review_score,created_at,updated_at,notes,data_source) VALUES (3,'ZNR','2021-09-24',250000,7.0,9.0,5.5,120000,'AS','NA','FallFrenzy',7.2,8000,7.8,72.0,180,'3.5','2021-09-26','2021-10-04','steady interest','scryfall');

-- Tournament match streams
CREATE TABLE tournament_match_streams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id TEXT,
    tournament_id TEXT,
    stream_url TEXT,
    platform TEXT,
    viewer_count INTEGER,
    peak_viewers INTEGER,
    stream_start TEXT,
    stream_end TEXT,
    language TEXT,
    commentary_team TEXT,
    duration_minutes INTEGER,
    archive_available INTEGER,
    archive_url TEXT,
    sponsor_overlay TEXT,
    bitrate_kbps INTEGER,
    resolution_text TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    source_system TEXT
);

INSERT INTO tournament_match_streams (id,match_id,tournament_id,stream_url,platform,viewer_count,peak_viewers,stream_start,stream_end,language,commentary_team,duration_minutes,archive_available,archive_url,sponsor_overlay,bitrate_kbps,resolution_text,created_at,updated_at,notes,source_system) VALUES (1,'M1001','T001','http://stream.example.com/m1001','Twitch',4500,7200,'2022-06-10 14:00','2022-06-10 15:45','en','TeamAlpha',105,1,'http://archive.example.com/m1001','LogoA',3500,'1080p','2022-06-01','2022-06-11','finals stream','streaming');
INSERT INTO tournament_match_streams (id,match_id,tournament_id,stream_url,platform,viewer_count,peak_viewers,stream_start,stream_end,language,commentary_team,duration_minutes,archive_available,archive_url,sponsor_overlay,bitrate_kbps,resolution_text,created_at,updated_at,notes,source_system) VALUES (2,'M1002','T001','http://stream.example.com/m1002','YouTube',3000,5000,'2022-06-11 16:00','2022-06-11 17:30','en','TeamBeta',90,1,'http://archive.example.com/m1002','LogoB',3000,'720p','2022-06-01','2022-06-12','semi finals','streaming');
INSERT INTO tournament_match_streams (id,match_id,tournament_id,stream_url,platform,viewer_count,peak_viewers,stream_start,stream_end,language,commentary_team,duration_minutes,archive_available,archive_url,sponsor_overlay,bitrate_kbps,resolution_text,created_at,updated_at,notes,source_system) VALUES (3,'M1003','T002','http://stream.example.com/m1003','Twitch',2100,3500,'2022-07-05 13:30','2022-07-05 14:45','en','TeamGamma',75,0,'','LogoC',2500,'1080p','2022-07-01','2022-07-06','quarterfinals','streaming');

-- Arcane research publications
CREATE TABLE arcane_research_publications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    paper_id TEXT,
    title TEXT,
    authors TEXT,
    publication_date DATE,
    journal_name TEXT,
    volume INTEGER,
    issue INTEGER,
    pages TEXT,
    doi TEXT,
    abstract TEXT,
    keywords TEXT,
    research_area TEXT,
    methodology TEXT,
    results_summary TEXT,
    citation_count INTEGER,
    impact_factor REAL,
    funding_agency TEXT,
    grant_number TEXT,
    pdf_url TEXT,
    notes TEXT,
    created_at DATE
);

INSERT INTO arcane_research_publications (id,paper_id,title,authors,publication_date,journal_name,volume,issue,pages,doi,abstract,keywords,research_area,methodology,results_summary,citation_count,impact_factor,funding_agency,grant_number,pdf_url,notes,created_at) VALUES (1,'ARC001','Mana Flow Optimization','DrA Smith;DrB Lee','2021-05-20','Arcane Journal',12,3,'101-115','10.1000/arc001','Study of mana conduit efficiency','mana,optimization','energy','simulation','Improved throughput by 15%','45','4.2','ArcaneFund','AF-2020-01','http://papers.example.com/arc001.pdf','highly cited','2021-06-01');
INSERT INTO arcane_research_publications (id,paper_id,title,authors,publication_date,journal_name,volume,issue,pages,doi,abstract,keywords,research_area,methodology,results_summary,citation_count,impact_factor,funding_agency,grant_number,pdf_url,notes,created_at) VALUES (2,'ARC002','Eldritch Artifact Longevity','DrC Wu','2022-02-11','Mystic Review',8,1,'50-68','10.1000/arc002','Analysis of artifact decay rates','artifact,longevity','materials','laboratory','Extended lifespan by coating','30','3.8','MysticResearch','MR-2021-07','http://papers.example.com/arc002.pdf','pending journal','2022-03-01');
INSERT INTO arcane_research_publications (id,paper_id,title,authors,publication_date,journal_name,volume,issue,pages,doi,abstract,keywords,research_area,methodology,results_summary,citation_count,impact_factor,funding_agency,grant_number,pdf_url,notes,created_at) VALUES (3,'ARC003','Planar Shift Mechanics','DrD Patel','2020-11-05','Plane Studies',5,2,'200-220','10.1000/arc003','Exploration of planar shift effects','plane,shift','physics','theoretical','Identified stability parameters','20','5.0','PlaneFund','PF-2020-03','http://papers.example.com/arc003.pdf','accepted','2020-12-01');

-- Digital collectible series metadata
CREATE TABLE digital_collectible_series_metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    series_id TEXT,
    series_name TEXT,
    launch_date DATE,
    total_items INTEGER,
    rarity_distribution TEXT,
    theme TEXT,
    creator TEXT,
    platform TEXT,
    blockchain TEXT,
    contract_address TEXT,
    token_standard TEXT,
    mint_price REAL,
    current_floor_price REAL,
    total_volume REAL,
    unique_holders INTEGER,
    average_hold_time REAL,
    last_market_update DATE,
    metadata_uri TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO digital_collectible_series_metadata (id,series_id,series_name,launch_date,total_items,rarity_distribution,theme,creator,platform,blockchain,contract_address,token_standard,mint_price,current_floor_price,total_volume,unique_holders,average_hold_time,last_market_update,metadata_uri,notes,created_at,updated_at) VALUES (1,'DS001','Arcane Relics','2022-01-15',500,'common:300,uncommon:150,rare:50,legendary:0','magic','Arcane Studios','OpenSea','Ethereum','0xABC123DEF456','ERC721',0.08,0.12,24000.5,3500,45.2,'2022-12-01','http://metadata.example.com/ds001.json','initial launch','2022-01-10','2022-12-02');
INSERT INTO digital_collectible_series_metadata (id,series_id,series_name,launch_date,total_items,rarity_distribution,theme,creator,platform,blockchain,contract_address,token_standard,mint_price,current_floor_price,total_volume,unique_holders,average_hold_time,last_market_update,metadata_uri,notes,created_at,updated_at) VALUES (2,'DS002','Mystic Landscapes','2023-03-05',300,'common:200,uncommon:80,rare:20','nature','Mystic Arts','Rarible','Polygon','0xDEF789ABC012','ERC1155',0.05,0.07,15000.0,2100,30.1,'2023-08-20','http://metadata.example.com/ds002.json','seasonal series','2023-02-20','2023-08-21');
INSERT INTO digital_collectible_series_metadata (id,series_id,series_name,launch_date,total_items,rarity_distribution,theme,creator,platform,blockchain,contract_address,token_standard,mint_price,current_floor_price,total_volume,unique_holders,average_hold_time,last_market_update,metadata_uri,notes,created_at,updated_at) VALUES (3,'DS003','Eldritch Icons','2021-11-11',100,'common:60,uncommon:30,rare:10','horror','Eldritch Labs','Foundation','Solana','0x123ABC456DEF','Metaplex',0.12,0.20,32000.8,4200,60.5,'2022-06-15','http://metadata.example.com/ds003.json','limited edition','2021-10-01','2022-06-16');