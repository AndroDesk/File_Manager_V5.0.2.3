.class public Lcom/google/firebase/installations/local/PersistedInstallation;
.super Ljava/lang/Object;
.source "PersistedInstallation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;
    }
.end annotation


# static fields
.field private static final AUTH_TOKEN_KEY:Ljava/lang/String; = "AuthToken"

.field private static final EXPIRES_IN_SECONDS_KEY:Ljava/lang/String; = "ExpiresInSecs"

.field private static final FIREBASE_INSTALLATION_ID_KEY:Ljava/lang/String; = "Fid"

.field private static final FIS_ERROR_KEY:Ljava/lang/String; = "FisError"

.field private static final PERSISTED_STATUS_KEY:Ljava/lang/String; = "Status"

.field private static final REFRESH_TOKEN_KEY:Ljava/lang/String; = "RefreshToken"

.field private static final SETTINGS_FILE_NAME_PREFIX:Ljava/lang/String; = "PersistedInstallation"

.field private static final TOKEN_CREATION_TIME_IN_SECONDS_KEY:Ljava/lang/String; = "TokenCreationEpochInSecs"


# instance fields
.field private final dataFile:Ljava/io/File;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/io/File;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "PersistedInstallation."

    .line 16
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, ".json"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    iput-object v0, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    .line 41
    iput-object p1, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 43
    return-void
.end method

.method private readJSONFromFile()Lorg/json/JSONObject;
    .registers 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    const/16 v1, 0x4000

    .line 8
    new-array v2, v1, [B

    .line 10
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    .line 12
    iget-object v4, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    .line 14
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_2d

    .line 17
    :goto_10
    const/4 v4, 0x0

    .line 18
    :try_start_11
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 21
    move-result v5

    .line 22
    if-gez v5, :cond_24

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_28

    .line 33
    :try_start_20
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_2d

    .line 36
    return-object v1

    .line 37
    :cond_24
    :try_start_24
    invoke-virtual {v0, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 40
    goto :goto_10

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    .line 45
    :catchall_2c
    :try_start_2c
    throw v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2d} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2d} :catch_2d

    .line 46
    :catch_2d
    new-instance v0, Lorg/json/JSONObject;

    .line 48
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    return-object v0
.end method


# virtual methods
.method public clearForTesting()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    return-void
.end method

.method public insertOrUpdatePersistedInstallationEntry(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "Fid"

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "Status"

    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRegistrationStatus()Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string v1, "AuthToken"

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getAuthToken()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v1, "RefreshToken"

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "TokenCreationEpochInSecs"

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getTokenCreationEpochInSecs()J

    .line 51
    move-result-wide v2

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v1, "ExpiresInSecs"

    .line 57
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getExpiresInSecs()J

    .line 60
    move-result-wide v2

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    const-string v1, "FisError"

    .line 66
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFisError()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "PersistedInstallation"

    .line 75
    const-string v2, "tmp"

    .line 77
    iget-object v3, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 79
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 86
    move-result-object v3

    .line 87
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Ljava/io/FileOutputStream;

    .line 93
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    const-string v3, "UTF-8"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 109
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 112
    iget-object v0, p0, Lcom/google/firebase/installations/local/PersistedInstallation;->dataFile:Ljava/io/File;

    .line 114
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_78

    .line 120
    goto :goto_80

    .line 121
    :cond_78
    new-instance v0, Ljava/io/IOException;

    .line 123
    const-string v1, "unable to rename the tmpfile to PersistedInstallation"

    .line 125
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    throw v0
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_80} :catch_80
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_80} :catch_80

    .line 129
    :catch_80
    :goto_80
    return-object p1
.end method

.method public readPersistedInstallationEntryValue()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/local/PersistedInstallation;->readJSONFromFile()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Fid"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    sget-object v3, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v3

    .line 18
    const-string v4, "Status"

    .line 20
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 23
    move-result v3

    .line 24
    const-string v4, "AuthToken"

    .line 26
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    const-string v5, "RefreshToken"

    .line 32
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    const-string v6, "TokenCreationEpochInSecs"

    .line 38
    const-wide/16 v7, 0x0

    .line 40
    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 43
    move-result-wide v9

    .line 44
    const-string v6, "ExpiresInSecs"

    .line 46
    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 49
    move-result-wide v6

    .line 50
    const-string v8, "FisError"

    .line 52
    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->builder()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setFirebaseInstallationId(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 63
    move-result-object v1

    .line 64
    invoke-static {}, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->values()[Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 67
    move-result-object v2

    .line 68
    aget-object v2, v2, v3

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setRegistrationStatus(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v4}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v5}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, v9, v10}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setTokenCreationEpochInSecs(J)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v6, v7}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setExpiresInSecs(J)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->setFisError(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;->build()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method
