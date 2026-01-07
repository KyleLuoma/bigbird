-- Resource allocation details for projects
CREATE TABLE resource_allocation
(
    Id                 INTEGER NOT NULL PRIMARY KEY,
    ProjectId          INTEGER NOT NULL,
    ResourceType       TEXT NOT NULL,
    ResourceId         INTEGER NOT NULL,
    AllocationStartDate DATETIME NOT NULL,
    AllocationEndDate   DATETIME NULL,
    Quantity            INTEGER NOT NULL,
    Unit                TEXT NOT NULL,
    CostPerUnit         DECIMAL(10,2) NOT NULL,
    TotalCost           DECIMAL(12,2) NOT NULL,
    OwnerUserId         INTEGER NULL,
    ApproverUserId      INTEGER NULL,
    AllocationStatus    TEXT NOT NULL,
    PriorityLevel       TEXT NOT NULL,
    Region              TEXT NULL,
    Department          TEXT NULL,
    FundingSource       TEXT NULL,
    CostCenter          TEXT NULL,
    Notes               TEXT NULL,
    CreatedAt           DATETIME NOT NULL,
    UpdatedAt           DATETIME NOT NULL
);

INSERT INTO resource_allocation (Id,ProjectId,ResourceType,ResourceId,AllocationStartDate,AllocationEndDate,Quantity,Unit,CostPerUnit,TotalCost,OwnerUserId,ApproverUserId,AllocationStatus,PriorityLevel,Region,Department,FundingSource,CostCenter,Notes,CreatedAt,UpdatedAt) VALUES
(1,101,'Compute',2001,'2023-01-01','2023-06-30',10,'vCPU',0.05,5.00,10,20,'Active','High','us-east','Engineering','Internal','CC1001','Initial allocation','2023-01-01','2023-01-02');

INSERT INTO resource_allocation (Id,ProjectId,ResourceType,ResourceId,AllocationStartDate,AllocationEndDate,Quantity,Unit,CostPerUnit,TotalCost,OwnerUserId,ApproverUserId,AllocationStatus,PriorityLevel,Region,Department,FundingSource,CostCenter,Notes,CreatedAt,UpdatedAt) VALUES
(2,102,'Storage',3005,'2023-02-15',NULL,500,'GB',0.01,5.00,11,21,'Pending','Medium','eu-west','DataScience','Grant','CC1002','Awaiting approval','2023-02-15','2023-02-16');

INSERT INTO resource_allocation (Id,ProjectId,ResourceType,ResourceId,AllocationStartDate,AllocationEndDate,Quantity,Unit,CostPerUnit,TotalCost,OwnerUserId,ApproverUserId,AllocationStatus,PriorityLevel,Region,Department,FundingSource,CostCenter,Notes,CreatedAt,UpdatedAt) VALUES
(3,103,'License',4002,'2023-03-01','2024-02-28',50,'Seat',10.00,500.00,12,22,'Active','Low','ap-south','Marketing','External','CC1003','Annual renewal','2023-03-01','2023-03-02');

-- Data pipeline job scheduling and execution metadata
CREATE TABLE data_pipeline_jobs
(
    JobId                INTEGER NOT NULL PRIMARY KEY,
    JobName              TEXT NOT NULL,
    ScheduleCron         TEXT NOT NULL,
    SourceSystem         TEXT NOT NULL,
    TargetSystem         TEXT NOT NULL,
    LastRunTime          DATETIME NULL,
    NextRunTime          DATETIME NULL,
    Status               TEXT NOT NULL,
    RunDurationSeconds   INTEGER NULL,
    RecordsProcessed     INTEGER NULL,
    RecordsFailed        INTEGER NULL,
    CreatedBy            INTEGER NULL,
    CreatedAt            DATETIME NOT NULL,
    UpdatedBy            INTEGER NULL,
    UpdatedAt            DATETIME NOT NULL,
    RetryCount           INTEGER NOT NULL,
    MaxRetries           INTEGER NOT NULL,
    AlertEmail           TEXT NULL,
    ExecutionMode        TEXT NOT NULL,
    PartitionKey         TEXT NULL,
    Description          TEXT NULL
);

INSERT INTO data_pipeline_jobs (JobId,JobName,ScheduleCron,SourceSystem,TargetSystem,LastRunTime,NextRunTime,Status,RunDurationSeconds,RecordsProcessed,RecordsFailed,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,RetryCount,MaxRetries,AlertEmail,ExecutionMode,PartitionKey,Description) VALUES
(1,'UserSync','0 2 * * *','legacy_db','user_warehouse','2023-01-31 02:00:00','2023-02-01 02:00:00','Success',300,15000,0,5,'2023-01-01','5','2023-01-31',0,3,'ops@example.com','Batch','user_id','Synchronize user data nightly');

INSERT INTO data_pipeline_jobs (JobId,JobName,ScheduleCron,SourceSystem,TargetSystem,LastRunTime,NextRunTime,Status,RunDurationSeconds,RecordsProcessed,RecordsFailed,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,RetryCount,MaxRetries,AlertEmail,ExecutionMode,PartitionKey,Description) VALUES
(2,'OrderETL','15 3 * * 1','order_db','analytics_dw','2023-01-30 03:15:00','2023-02-06 03:15:00','Failed',0,0,0,6,'2023-01-05','6','2023-01-30',2,5,'etl@example.com','Batch','order_date','Extract transform load weekly orders');

INSERT INTO data_pipeline_jobs (JobId,JobName,ScheduleCron,SourceSystem,TargetSystem,LastRunTime,NextRunTime,Status,RunDurationSeconds,RecordsProcessed,RecordsFailed,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,RetryCount,MaxRetries,AlertEmail,ExecutionMode,PartitionKey,Description) VALUES
(3,'RealTimeClicks','*/5 * * * *','event_stream','realtime_db','2023-01-31 12:05:00','2023-01-31 12:10:00','Success',30,5000,0,7,'2023-01-10','7','2023-01-31',0,3,'realtime@example.com','Streaming','session_id','Ingest click events every 5 minutes');

-- AI model version tracking
CREATE TABLE ai_model_versions
(
    ModelVersionId   INTEGER NOT NULL PRIMARY KEY,
    ModelName        TEXT NOT NULL,
    VersionNumber    TEXT NOT NULL,
    TrainingDataSet  TEXT NOT NULL,
    TrainingStartDate DATETIME NOT NULL,
    TrainingEndDate   DATETIME NOT NULL,
    Accuracy          DECIMAL(5,4) NULL,
    Precision         DECIMAL(5,4) NULL,
    Recall            DECIMAL(5,4) NULL,
    F1Score           DECIMAL(5,4) NULL,
    ParametersCount  INTEGER NULL,
    HyperparametersJson TEXT NULL,
    CreatedBy        INTEGER NULL,
    CreatedAt        DATETIME NOT NULL,
    UpdatedBy        INTEGER NULL,
    UpdatedAt        DATETIME NOT NULL,
    DeploymentStatus TEXT NOT NULL,
    DeploymentDate   DATETIME NULL,
    DeployedEnvironment TEXT NULL,
    OwnerTeam        TEXT NULL,
    Tags             TEXT NULL
);

INSERT INTO ai_model_versions (ModelVersionId,ModelName,VersionNumber,TrainingDataSet,TrainingStartDate,TrainingEndDate,Accuracy,Precision,Recall,F1Score,ParametersCount,HyperparametersJson,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,DeploymentStatus,DeploymentDate,DeployedEnvironment,OwnerTeam,Tags) VALUES
(1,'ChurnPredictor','v1.0','churn_2022','2023-01-01','2023-01-15',0.9123,0.8800,0.9400,0.9090,1200000,'{\"learning_rate\":0.01,\"batch_size\":256}',10,'2023-01-01','10','2023-01-16','Deployed','2023-01-20','Production','DataScience','finance,ml');

INSERT INTO ai_model_versions (ModelVersionId,ModelName,VersionNumber,TrainingDataSet,TrainingStartDate,TrainingEndDate,Accuracy,Precision,Recall,F1Score,ParametersCount,HyperparametersJson,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,DeploymentStatus,DeploymentDate,DeployedEnvironment,OwnerTeam,Tags) VALUES
(2,'ImageTagger','v2.3','images_2023','2023-02-01','2023-02-20',0.9540,0.9600,0.9500,0.9550,2500000,'{\"learning_rate\":0.001,\"epochs\":30}',12,'2023-02-01','12','2023-02-21','Testing','2023-03-01','Staging','VisionTeam','image,tagging');

INSERT INTO ai_model_versions (ModelVersionId,ModelName,VersionNumber,TrainingDataSet,TrainingStartDate,TrainingEndDate,Accuracy,Precision,Recall,F1Score,ParametersCount,HyperparametersJson,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,DeploymentStatus,DeploymentDate,DeployedEnvironment,OwnerTeam,Tags) VALUES
(3,'SentimentAnalyzer','v0.9','tweets_2022','2023-03-05','2023-03-15',0.8734,0.8600,0.8800,0.8699,800000,'{\"learning_rate\":0.005,\"dropout\":0.3}',14,'2023-03-05','14','2023-03-16','Pending',NULL,NULL,'NLPTeam','nlp,sentiment');

-- Compliance audit record repository
CREATE TABLE compliance_audit_records
(
    AuditId          INTEGER NOT NULL PRIMARY KEY,
    AuditType        TEXT NOT NULL,
    AuditDate        DATE NOT NULL,
    AuditorName      TEXT NOT NULL,
    Department       TEXT NOT NULL,
    Scope            TEXT NOT NULL,
    FindingsCount    INTEGER NOT NULL,
    FindingsResolved INTEGER NOT NULL,
    RiskLevel        TEXT NOT NULL,
    Recommendation   TEXT NULL,
    FollowUpDate     DATE NULL,
    Status           TEXT NOT NULL,
    CreatedAt        DATETIME NOT NULL,
    UpdatedAt        DATETIME NOT NULL,
    DocumentRef      TEXT NULL,
    AuditScore       DECIMAL(5,2) NULL,
    ComplianceStandard TEXT NOT NULL,
    NonComplianceCount INTEGER NOT NULL,
    Comments         TEXT NULL,
    ActionOwner      TEXT NULL,
    ActionDueDate    DATE NULL
);

INSERT INTO compliance_audit_records (AuditId,AuditType,AuditDate,AuditorName,Department,Scope,FindingsCount,FindingsResolved,RiskLevel,Recommendation,FollowUpDate,Status,CreatedAt,UpdatedAt,DocumentRef,AuditScore,ComplianceStandard,NonComplianceCount,Comments,ActionOwner,ActionDueDate) VALUES
(1,'Financial','2023-01-20','AliceSmith','Finance','Quarterly','5','3','Medium','Enhance controls','2023-02-15','Open','2023-01-20','2023-01-21','FIN2023Q1',85.75,'SOX','2','Review needed','BobJones','2023-02-28');

INSERT INTO compliance_audit_records (AuditId,AuditType,AuditDate,AuditorName,Department,Scope,FindingsCount,FindingsResolved,RiskLevel,Recommendation,FollowUpDate,Status,CreatedAt,UpdatedAt,DocumentRef,AuditScore,ComplianceStandard,NonComplianceCount,Comments,ActionOwner,ActionDueDate) VALUES
(2,'Security','2023-02-10','JohnDoe','IT','Annual','8','5','High','Patch legacy systems','2023-03-05','Open','2023-02-10','2023-02-11','SEC2023ANNUAL',72.40,'ISO27001','3','Critical patches','KarenLee','2023-03-20');

INSERT INTO compliance_audit_records (AuditId,AuditType,AuditDate,AuditorName,Department,Scope,FindingsCount,FindingsResolved,RiskLevel,Recommendation,FollowUpDate,Status,CreatedAt,UpdatedAt,DocumentRef,AuditScore,ComplianceStandard,NonComplianceCount,Comments,ActionOwner,ActionDueDate) VALUES
(3,'Privacy','2023-03-05','EmilyClark','Legal','Bi-Annual','2','2','Low','Update privacy policy','2023-04-01','Closed','2023-03-05','2023-03-06','PRV2023BI','94.10','GDPR','0','All addressed','MikeBrown','2023-04-15');

-- Security incident logging
CREATE TABLE security_incident_log
(
    IncidentId          INTEGER NOT NULL PRIMARY KEY,
    IncidentType        TEXT NOT NULL,
    DetectedAt          DATETIME NOT NULL,
    ReportedBy          TEXT NOT NULL,
    Severity            TEXT NOT NULL,
    AffectedSystem      TEXT NOT NULL,
    Description         TEXT NULL,
    ImpactScore         INTEGER NULL,
    ContainmentStatus   TEXT NULL,
    MitigationSteps     TEXT NULL,
    ResolutionDate      DATETIME NULL,
    RootCause           TEXT NULL,
    AssignedTo          TEXT NULL,
    Status              TEXT NOT NULL,
    CreatedAt           DATETIME NOT NULL,
    UpdatedAt           DATETIME NOT NULL,
    IncidentIDExternal  TEXT NULL,
    NotificationSent    BOOLEAN NOT NULL,
    BusinessImpact      TEXT NULL,
    RecoveryTimeObjective INTEGER NULL
);

INSERT INTO security_incident_log (IncidentId,IncidentType,DetectedAt,ReportedBy,Severity,AffectedSystem,Description,ImpactScore,ContainmentStatus,MitigationSteps,ResolutionDate,RootCause,AssignedTo,Status,CreatedAt,UpdatedAt,IncidentIDExternal,NotificationSent,BusinessImpact,RecoveryTimeObjective) VALUES
(1,'Phishing','2023-01-15 09:30:00','DanaWhite','Medium','EmailGateway','User reported suspicious email','3','Contained','User education campaign','2023-01-16 10:00:00','Human error','SecurityTeam','Resolved','2023-01-15','2023-01-16','EXT12345',TRUE,'Minor','4');

INSERT INTO security_incident_log (IncidentId,IncidentType,DetectedAt,ReportedBy,Severity,AffectedSystem,Description,ImpactScore,ContainmentStatus,MitigationSteps,ResolutionDate,RootCause,AssignedTo,Status,CreatedAt,UpdatedAt,IncidentIDExternal,NotificationSent,BusinessImpact,RecoveryTimeObjective) VALUES
(2,'DDoS','2023-02-20 14:05:00','MonitoringTool','High','WebServer','Traffic spike detected','8','Mitigated','Traffic filtering and auto-scaling','2023-02-20 16:45:00','Botnet attack','NetworkTeam','Resolved','2023-02-20','2023-02-20','EXT67890',TRUE,'Service degradation','2');

INSERT INTO security_incident_log (IncidentId,IncidentType,DetectedAt,ReportedBy,Severity,AffectedSystem,Description,ImpactScore,ContainmentStatus,MitigationSteps,ResolutionDate,RootCause,AssignedTo,Status,CreatedAt,UpdatedAt,IncidentIDExternal,NotificationSent,BusinessImpact,RecoveryTimeObjective) VALUES
(3,'DataLeak','2023-03-10 11:20:00','AuditTool','Critical','Database','Unauthorized export of customer data','10','Under investigation','Revoke access keys','2023-03-15 09:00:00','Misconfigured permissions','DBAdmin','Closed','2023-03-10','2023-03-15','EXT24680',TRUE,'High','1');

-- Vendor contract repository
CREATE TABLE vendor_contracts
(
    ContractId          INTEGER NOT NULL PRIMARY KEY,
    VendorName          TEXT NOT NULL,
    ContractNumber      TEXT NOT NULL,
    StartDate           DATE NOT NULL,
    EndDate             DATE NOT NULL,
    ContractValue       DECIMAL(12,2) NOT NULL,
    Currency            TEXT NOT NULL,
    PaymentTerms        TEXT NOT NULL,
    ServiceLevel        TEXT NOT NULL,
    RenewalOption       TEXT NOT NULL,
    NoticePeriodDays    INTEGER NOT NULL,
    PrimaryContact      TEXT NOT NULL,
    ContactEmail        TEXT NOT NULL,
    ContactPhone        TEXT NOT NULL,
    ContractStatus      TEXT NOT NULL,
    CreatedAt           DATETIME NOT NULL,
    UpdatedAt           DATETIME NOT NULL,
    GoverningLaw        TEXT NOT NULL,
    Jurisdiction        TEXT NOT NULL,
    ConfidentialityClause TEXT NOT NULL,
    TerminationClause   TEXT NOT NULL
);

INSERT INTO vendor_contracts (ContractId,VendorName,ContractNumber,StartDate,EndDate,ContractValue,Currency,PaymentTerms,ServiceLevel,RenewalOption,NoticePeriodDays,PrimaryContact,ContactEmail,ContactPhone,ContractStatus,CreatedAt,UpdatedAt,GoverningLaw,Jurisdiction,ConfidentialityClause,TerminationClause) VALUES
(1,'CloudServe','CS-2023-001','2023-01-01','2024-12-31','150000.00','USD','Net30','Gold','Auto','90','JohnDoe','john.doe@cloudserve.com','5551234567','Active','2023-01-01','2023-01-02','US Law','California','Standard','Standard');

INSERT INTO vendor_contracts (ContractId,VendorName,ContractNumber,StartDate,EndDate,ContractValue,Currency,PaymentTerms,ServiceLevel,RenewalOption,NoticePeriodDays,PrimaryContact,ContactEmail,ContactPhone,ContractStatus,CreatedAt,UpdatedAt,GoverningLaw,Jurisdiction,ConfidentialityClause,TerminationClause) VALUES
(2,'DataAnalyticsCo','DAC-2022-089','2022-06-15','2025-06-14','250000.00','USD','Net45','Platinum','Manual','120','JaneSmith','jane.smith@dataanalyticsco.com','5559876543','Active','2022-06-15','2022-06-16','US Law','NewYork','Standard','Standard');

INSERT INTO vendor_contracts (ContractId,VendorName,ContractNumber,StartDate,EndDate,ContractValue,Currency,PaymentTerms,ServiceLevel,RenewalOption,NoticePeriodDays,PrimaryContact,ContactEmail,ContactPhone,ContractStatus,CreatedAt,UpdatedAt,GoverningLaw,Jurisdiction,ConfidentialityClause,TerminationClause) VALUES
(3,'OfficeSuppliesInc','OSI-2021-045','2021-03-01','2023-02-28','50000.00','USD','Net30','Standard','Auto','60','MikeTaylor','mike.taylor@officesuppliesinc.com','5555551212','Expired','2021-03-01','2023-03-01','US Law','Illinois','Standard','Standard');

-- Expense report tracking
CREATE TABLE expense_reports
(
    ReportId          INTEGER NOT NULL PRIMARY KEY,
    EmployeeId        INTEGER NOT NULL,
    ReportDate        DATE NOT NULL,
    TotalAmount       DECIMAL(10,2) NOT NULL,
    Currency          TEXT NOT NULL,
    Category          TEXT NOT NULL,
    ApprovedBy        INTEGER NULL,
    ApprovalDate      DATE NULL,
    Status            TEXT NOT NULL,
    CreatedAt         DATETIME NOT NULL,
    UpdatedAt         DATETIME NOT NULL,
    ReceiptCount      INTEGER NOT NULL,
    MileageAmount     DECIMAL(8,2) NULL,
    TravelDays        INTEGER NULL,
    ProjectCode       TEXT NULL,
    CostCenter        TEXT NULL,
    Comments          TEXT NULL,
    AuditFlag         BOOLEAN NOT NULL,
    PaymentMethod     TEXT NOT NULL,
    BankAccount       TEXT NULL,
    ReimbursementDate DATE NULL
);

INSERT INTO expense_reports (ReportId,EmployeeId,ReportDate,TotalAmount,Currency,Category,ApprovedBy,ApprovalDate,Status,CreatedAt,UpdatedAt,ReceiptCount,MileageAmount,TravelDays,ProjectCode,CostCenter,Comments,AuditFlag,PaymentMethod,BankAccount,ReimbursementDate) VALUES
(1,1001,'2023-01-20',1234.56,'USD','Travel',2001,'2023-01-22','Approved','2023-01-20','2023-01-23',5,150.00,3,'PRJ001','CC100','Business trip to conference',FALSE,'BankTransfer','ACC123456','2023-01-30');

INSERT INTO expense_reports (ReportId,EmployeeId,ReportDate,TotalAmount,Currency,Category,ApprovedBy,ApprovalDate,Status,CreatedAt,UpdatedAt,ReceiptCount,MileageAmount,TravelDays,ProjectCode,CostCenter,Comments,AuditFlag,PaymentMethod,BankAccount,ReimbursementDate) VALUES
(2,1002,'2023-02-15',250.00,'USD','Supplies',2002,'2023-02-16','Approved','2023-02-15','2023-02-17',3,NULL,NULL,'PRJ002','CC101','Office supplies purchase',FALSE,'CreditCard','ACC654321','2023-02-20');

INSERT INTO expense_reports (ReportId,EmployeeId,ReportDate,TotalAmount,Currency,Category,ApprovedBy,ApprovalDate,Status,CreatedAt,UpdatedAt,ReceiptCount,MileageAmount,TravelDays,ProjectCode,CostCenter,Comments,AuditFlag,PaymentMethod,BankAccount,ReimbursementDate) VALUES
(3,1003,'2023-03-05',980.75,'USD','Entertainment',NULL,NULL,'Pending','2023-03-05','2023-03-05',2,NULL,NULL,'PRJ003','CC102','Client dinner',TRUE,'Check','ACC987654',NULL);

-- Training session attendance records
CREATE TABLE training_session_attendance
(
    AttendanceId        INTEGER NOT NULL PRIMARY KEY,
    SessionId           INTEGER NOT NULL,
    EmployeeId          INTEGER NOT NULL,
    AttendanceStatus    TEXT NOT NULL,
    CheckInTime         DATETIME NULL,
    CheckOutTime        DATETIME NULL,
    DurationMinutes     INTEGER NULL,
    TrainerId           INTEGER NULL,
    Location            TEXT NULL,
    SessionTopic        TEXT NOT NULL,
    SessionDate         DATE NOT NULL,
    CreatedAt           DATETIME NOT NULL,
    UpdatedAt           DATETIME NOT NULL,
    FeedbackScore       INTEGER NULL,
    Comments            TEXT NULL,
    CertificationEarned TEXT NULL,
    CertificateId       TEXT NULL,
    MaterialsProvided   BOOLEAN NOT NULL,
    EquipmentUsed       TEXT NULL,
    VirtualLink         TEXT NULL,
    Notes               TEXT NULL
);

INSERT INTO training_session_attendance (AttendanceId,SessionId,EmployeeId,AttendanceStatus,CheckInTime,CheckOutTime,DurationMinutes,TrainerId,Location,SessionTopic,SessionDate,CreatedAt,UpdatedAt,FeedbackScore,Comments,CertificationEarned,CertificateId,MaterialsProvided,EquipmentUsed,VirtualLink,Notes) VALUES
(1,501,1001,'Present','2023-01-10 09:00:00','2023-01-10 11:00:00',120,3001,'Room A','AdvancedSQL','2023-01-10','2023-01-09','2023-01-10',9,'Good session','SQLExpert','CERT001',TRUE,'Projector','https://meet.example.com/501','N/A');

INSERT INTO training_session_attendance (AttendanceId,SessionId,EmployeeId,AttendanceStatus,CheckInTime,CheckOutTime,DurationMinutes,TrainerId,Location,SessionTopic,SessionDate,CreatedAt,UpdatedAt,FeedbackScore,Comments,CertificationEarned,CertificateId,MaterialsProvided,EquipmentUsed,VirtualLink,Notes) VALUES
(2,502,1002,'Absent',NULL,NULL,NULL,3002,'Room B','DataVisualization','2023-02-15','2023-02-14','2023-02-15',NULL,'Sick leave',NULL,NULL,FALSE,NULL,'https://meet.example.com/502','Requested reschedule');

INSERT INTO training_session_attendance (AttendanceId,SessionId,EmployeeId,AttendanceStatus,CheckInTime,CheckOutTime,DurationMinutes,TrainerId,Location,SessionTopic,SessionDate,CreatedAt,UpdatedAt,FeedbackScore,Comments,CertificationEarned,CertificateId,MaterialsProvided,EquipmentUsed,VirtualLink,Notes) VALUES
(3,503,1003,'Present','2023-03-05 14:00:00','2023-03-05 15:30:00',90,3003,'Online','CyberSecurityBasics','2023-03-05','2023-03-04','2023-03-05',8,'Informative','CyberSecure','CERT003',TRUE,'Headset','https://meet.example.com/503','Follow-up quiz required');

-- Customer onboarding steps tracking
CREATE TABLE customer_onboarding_steps
(
    StepId           INTEGER NOT NULL PRIMARY KEY,
    CustomerId       INTEGER NOT NULL,
    StepNumber       INTEGER NOT NULL,
    StepName         TEXT NOT NULL,
    AssignedOwner    TEXT NOT NULL,
    DueDate          DATE NOT NULL,
    CompletionDate   DATE NULL,
    Status           TEXT NOT NULL,
    ChecklistItems   TEXT NULL,
    Notes            TEXT NULL,
    CreatedAt        DATETIME NOT NULL,
    UpdatedAt        DATETIME NOT NULL,
    Outcome          TEXT NULL,
    SatisfactionScore INTEGER NULL,
    FollowUpRequired BOOLEAN NOT NULL,
    FollowUpDate     DATE NULL,
    DocumentationLink TEXT NULL,
    TrainingCompleted BOOLEAN NOT NULL,
    SupportTicketId  INTEGER NULL,
    EscalationLevel  TEXT NULL,
    Feedback         TEXT NULL
);

INSERT INTO customer_onboarding_steps (StepId,CustomerId,StepNumber,StepName,AssignedOwner,DueDate,CompletionDate,Status,ChecklistItems,Notes,CreatedAt,UpdatedAt,Outcome,SatisfactionScore,FollowUpRequired,FollowUpDate,DocumentationLink,TrainingCompleted,SupportTicketId,EscalationLevel,Feedback) VALUES
(1,9001,1,'AccountSetup','OnboardingTeam','2023-01-10','2023-01-09','Completed','Create account;Verify email','All good','2023-01-01','2023-01-09','Success',9,FALSE,NULL,'http://docs.example.com/account','TRUE',NULL,'None','Positive');

INSERT INTO customer_onboarding_steps (StepId,CustomerId,StepNumber,StepName,AssignedOwner,DueDate,CompletionDate,Status,ChecklistItems,Notes,CreatedAt,UpdatedAt,Outcome,SatisfactionScore,FollowUpRequired,FollowUpDate,DocumentationLink,TrainingCompleted,SupportTicketId,EscalationLevel,Feedback) VALUES
(2,9001,2,'DataImport','DataTeam','2023-01-20',NULL,'Pending','Upload CSV;Map fields','Waiting for customer upload','2023-01-01','2023-01-15','Pending',NULL,TRUE,'2023-02-01','http://docs.example.com/dataimport','FALSE',1234,'Level1','N/A');

INSERT INTO customer_onboarding_steps (StepId,CustomerId,StepNumber,StepName,AssignedOwner,DueDate,CompletionDate,Status,ChecklistItems,Notes,CreatedAt,UpdatedAt,Outcome,SatisfactionScore,FollowUpRequired,FollowUpDate,DocumentationLink,TrainingCompleted,SupportTicketId,EscalationLevel,Feedback) VALUES
(3,9002,1,'KickoffMeeting','OnboardingTeam','2023-02-05','2023-02-04','Completed','Schedule meeting;Send agenda','Successful meeting','2023-01-20','2023-02-04','Success',8,FALSE,NULL,'http://docs.example.com/kickoff','TRUE',NULL,'None','Positive');

-- Feature rollout planning
CREATE TABLE feature_rollout_plan
(
    RolloutId            INTEGER NOT NULL PRIMARY KEY,
    FeatureName          TEXT NOT NULL,
    Version              TEXT NOT NULL,
    RolloutStartDate     DATE NOT NULL,
    RolloutEndDate       DATE NOT NULL,
    TargetSegment        TEXT NOT NULL,
    PercentageUsers      INTEGER NOT NULL,
    RolloutStatus        TEXT NOT NULL,
    DeploymentMethod     TEXT NOT NULL,
    OwnerTeam            TEXT NOT NULL,
    ChangeLead           TEXT NOT NULL,
    RiskAssessment       TEXT NOT NULL,
    BackoutPlan          TEXT NULL,
    CommunicationPlan    TEXT NULL,
    MonitoringMetrics    TEXT NULL,
    SuccessCriteria      TEXT NULL,
    CreatedAt            DATETIME NOT NULL,
    UpdatedAt            DATETIME NOT NULL,
    RolloutNotes         TEXT NULL,
    PostRolloutReviewDate DATE NULL
);

INSERT INTO feature_rollout_plan (RolloutId,FeatureName,Version,RolloutStartDate,RolloutEndDate,TargetSegment,PercentageUsers,RolloutStatus,DeploymentMethod,OwnerTeam,ChangeLead,RiskAssessment,BackoutPlan,CommunicationPlan,MonitoringMetrics,SuccessCriteria,CreatedAt,UpdatedAt,RolloutNotes,PostRolloutReviewDate) VALUES
(1,'DarkMode','2.1','2023-03-01','2023-03-15','BetaTesters',20,'InProgress','FeatureFlag','UITeam','AliceSmith','Medium','Revert flag','Email announcement','ErrorRate,Latency','<1% errors','2023-02-28','2023-03-01','Monitoring rollout','2023-03-20');

INSERT INTO feature_rollout_plan (RolloutId,FeatureName,Version,RolloutStartDate,RolloutEndDate,TargetSegment,PercentageUsers,RolloutStatus,DeploymentMethod,OwnerTeam,ChangeLead,RiskAssessment,BackoutPlan,CommunicationPlan,MonitoringMetrics,SuccessCriteria,CreatedAt,UpdatedAt,RolloutNotes,PostRolloutReviewDate) VALUES
(2,'SearchEnhancement','1.4','2023-04-01','2023-04-10','AllUsers',100,'Planned','BlueGreen','SearchTeam','BobJones','Low','Rollback script','In-app banner','SearchLatency,CTR','CTR increase 5%','2023-03-15','2023-03-15','Pending QA','2023-04-15');

INSERT INTO feature_rollout_plan (RolloutId,FeatureName,Version,RolloutStartDate,RolloutEndDate,TargetSegment,PercentageUsers,RolloutStatus,DeploymentMethod,OwnerTeam,ChangeLead,RiskAssessment,BackoutPlan,CommunicationPlan,MonitoringMetrics,SuccessCriteria,CreatedAt,UpdatedAt,RolloutNotes,PostRolloutReviewDate) VALUES
(3,'APIv3','3.0','2023-05-01','2023-05-20','PartnerDevelopers',50,'Scheduled','Canary','APITeam','CarolLee','High','Switch DNS','Partner newsletter','ErrorRate,ResponseTime','<0.5% error','2023-04-20','2023-04-20','Coordination with partners','2023-05-25');