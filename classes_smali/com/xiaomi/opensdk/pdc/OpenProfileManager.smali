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
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v6, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

    .line 6
    const-string v4, "sysFit"

    .line 8
    const-string v5, "default"

    .line 10
    move-object v0, v6

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;-><init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-object v6, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncServer:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;

    .line 19
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncFactory;

    .line 21
    invoke-direct {p1, v6}, Lcom/xiaomi/opensdk/pdc/SyncFactory;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V

    .line 24
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncFactory:Lcom/xiaomi/opensdk/pdc/SyncFactory;

    .line 26
    return-void
.end method

.method private getProfileFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UserProfile;
    .registers 5

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    .line 6
    const-string v1, "birthday"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_13

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    .line 20
    :cond_13
    const-string v1, "gender"

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_25

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/xiaomi/opensdk/pdc/UserProfile;->getGenderEnum(I)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 35
    move-result-object p1

    .line 36
    iput-object p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 38
    :cond_25
    return-object v0
.end method


# virtual methods
.method public getPhysicalProfile()Lcom/xiaomi/opensdk/pdc/UserProfile;
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncFactory:Lcom/xiaomi/opensdk/pdc/SyncFactory;

    .line 3
    const-string v1, "1"

    .line 5
    invoke-virtual {v0, v1}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->fetchRecord(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_52

    .line 15
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_48

    .line 21
    sget-object v1, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    .line 23
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 30
    move-result v2

    .line 31
    aget v1, v1, v2

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v1, v2, :cond_3e

    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq v1, v2, :cond_30

    .line 39
    const/4 v2, 0x3

    .line 40
    if-eq v1, v2, :cond_2a

    .line 42
    goto :goto_52

    .line 43
    :cond_2a
    new-instance v0, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    .line 45
    invoke-direct {v0}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    .line 48
    throw v0

    .line 49
    :cond_30
    new-instance v1, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 51
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    .line 58
    move-result-wide v3

    .line 59
    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    .line 62
    throw v1

    .line 63
    :cond_3e
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 65
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v1

    .line 73
    :cond_48
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 75
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 82
    throw v1

    .line 83
    :cond_52
    :goto_52
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_74

    .line 89
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;
    :try_end_5e
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_0 .. :try_end_5e} :catch_7c

    .line 95
    if-eqz v0, :cond_6c

    .line 97
    :try_start_60
    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->getProfileFromJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UserProfile;

    .line 100
    move-result-object v0
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_64} :catch_65
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_60 .. :try_end_64} :catch_7c

    .line 101
    return-object v0

    .line 102
    :catch_65
    move-exception v0

    .line 103
    :try_start_66
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 105
    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    throw v1

    .line 109
    :cond_6c
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 111
    const-string v1, "SyncException in getProfile(), profile not exist."

    .line 113
    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v0

    .line 117
    :cond_74
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 119
    const-string v1, "SyncException in getProfile(), record not exist."

    .line 121
    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0
    :try_end_7c
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_66 .. :try_end_7c} :catch_7c

    .line 125
    :catch_7c
    move-exception v0

    .line 126
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 128
    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    .line 131
    throw v1
.end method

.method public setBirthday(J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-lez v0, :cond_11

    .line 7
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    .line 9
    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    .line 12
    iput-wide p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->birthday:J

    .line 14
    invoke-virtual {p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->setProfile(Lcom/xiaomi/opensdk/pdc/Profile;)V

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string p2, "参数错误，请参考API文档"

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public setGender(Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 3
    if-eq p1, v0, :cond_11

    .line 5
    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->FEMALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 7
    if-ne p1, v0, :cond_9

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string v0, "参数错误，请参考API文档"

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1

    .line 18
    :cond_11
    :goto_11
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile;

    .line 20
    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/UserProfile;-><init>()V

    .line 23
    iput-object p1, v0, Lcom/xiaomi/opensdk/pdc/UserProfile;->gender:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    .line 25
    invoke-virtual {p0, v0}, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->setProfile(Lcom/xiaomi/opensdk/pdc/Profile;)V

    .line 28
    return-void
.end method

.method public setProfile(Lcom/xiaomi/opensdk/pdc/Profile;)V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager;->mSyncFactory:Lcom/xiaomi/opensdk/pdc/SyncFactory;

    .line 3
    const-string v1, "fit"

    .line 5
    const-string v2, "1"

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/Profile;->toJsonObject()Lorg/json/JSONObject;

    .line 12
    move-result-object v5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->isSuccess()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_5a

    .line 23
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_50

    .line 29
    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    .line 31
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getErrorType()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v1

    .line 39
    aget v0, v0, v1

    .line 41
    const/4 v1, 0x1

    .line 42
    if-eq v0, v1, :cond_46

    .line 44
    const/4 v1, 0x2

    .line 45
    if-eq v0, v1, :cond_38

    .line 47
    const/4 p1, 0x3

    .line 48
    if-eq v0, p1, :cond_32

    .line 50
    goto :goto_5a

    .line 51
    :cond_32
    new-instance p1, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    .line 53
    invoke-direct {p1}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    .line 56
    throw p1

    .line 57
    :cond_38
    new-instance v0, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getRetryTime()J

    .line 66
    move-result-wide v2

    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    .line 70
    throw v0

    .line 71
    :cond_46
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 73
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0

    .line 81
    :cond_50
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 83
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->getDescription()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_62
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 91
    :cond_5a
    :goto_5a
    return-void

    .line 92
    :catch_5b
    move-exception p1

    .line 93
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 95
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    throw v0

    .line 99
    :catch_62
    move-exception p1

    .line 100
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 102
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    .line 105
    throw v0
.end method
