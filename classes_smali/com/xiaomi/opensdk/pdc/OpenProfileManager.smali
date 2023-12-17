.class public Lcom/xiaomi/opensdk/pdc/OpenProfileManager;
.super Ljava/lang/Object;
.source "OpenProfileManager.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "sysFit"

.field private static final RECORD_ID:Ljava/lang/String; = "1"

.field private static final SPACE_ID:Ljava/lang/String; = "default"

.field private static final TYPE:Ljava/lang/String; = "fit"


# instance fields
.field private final mSyncFactory:Lcom/xiaomi/opensdk/pdc/SyncFactory;

.field private final mSyncServer:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

    const-string v4, "sysFit"

    const-string v5, "default"

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;-><init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncServer:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncFactory;

    invoke-direct {p1, v6}, Lcom/xiaomi/opensdk/pdc/SyncFactory;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncFactory:Lcom/xiaomi/opensdk/pdc/SyncFactory;

    return-void
.end method

.method private getProfileFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UserProfile;
    .registers 5

    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    const-string v1, "birthday"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    :cond_13
    const-string v1, "gender"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/pdc/UserProfile;->getGenderEnum(I)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    :cond_25
    return-object v0
.end method


# virtual methods
.method public getPhysicalProfile()Lcom/xiaomi/opensdk/pdc/UserProfile;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncFactory:Lcom/xiaomi/opensdk/pdc/SyncFactory;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->fetchRecord(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v1

    if-eqz v1, :cond_48

    sget-object v1, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_30

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    goto :goto_52

    :cond_2a
    new-instance v0, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    throw v0

    :cond_30
    new-instance v1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v1

    :cond_3e
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    :goto_52
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;
    :try_end_5e
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_0 .. :try_end_5e} :catch_7c

    if-eqz v0, :cond_6c

    :try_start_60
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->getProfileFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UserProfile;

    move-result-object v0
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_64} :catch_65
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_60 .. :try_end_64} :catch_7c

    return-object v0

    :catch_65
    move-exception v0

    :try_start_66
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6c
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v1, "SyncException in getProfile(), profile not exist."

    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    const-string v1, "SyncException in getProfile(), record not exist."

    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7c
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_66 .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception v0

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBirthday(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    iput-wide p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    invoke-virtual {p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->setProfile(Lcom/xiaomi/opensdk/pdc/Profile;)V

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "参数错误，请参考API文档"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGender(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)V
    .registers 3

    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-eq p1, v0, :cond_11

    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->FEMALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    if-ne p1, v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "参数错误，请参考API文档"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_11
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->setProfile(Lcom/xiaomi/opensdk/pdc/Profile;)V

    return-void
.end method

.method public setProfile(Lcom/xiaomi/opensdk/pdc/Profile;)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncFactory:Lcom/xiaomi/opensdk/pdc/SyncFactory;

    const-string v1, "fit"

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/Profile;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 p1, 0x3

    if-eq v0, p1, :cond_32

    goto :goto_5a

    :cond_32
    new-instance p1, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    invoke-direct {p1}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    throw p1

    :cond_38
    new-instance v0, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v0

    :cond_46
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_62
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_0 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception p1

    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_62
    move-exception p1

    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
