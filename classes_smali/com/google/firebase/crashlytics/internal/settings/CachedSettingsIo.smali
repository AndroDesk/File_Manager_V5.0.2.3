.class public Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;
.super Ljava/lang/Object;
.source "CachedSettingsIo.java"


# static fields
.field private static final SETTINGS_CACHE_FILENAME:Ljava/lang/String; = "com.crashlytics.settings.json"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->context:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private getSettingsFile()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;

    .line 5
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->context:Landroid/content/Context;

    .line 7
    invoke-direct {v1, v2}, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStoreImpl;->getFilesDir()Ljava/io/File;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "com.crashlytics.settings.json"

    .line 16
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    return-object v0
.end method


# virtual methods
.method public readCachedSettings()Lorg/json/JSONObject;
    .registers 7

    .line 1
    const-string v0, "Error while closing settings cache file."

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "Reading cached settings..."

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_c
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->getSettingsFile()Ljava/io/File;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_28

    .line 23
    new-instance v3, Ljava/io/FileInputStream;

    .line 25
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_3b
    .catchall {:try_start_c .. :try_end_1b} :catchall_37

    .line 28
    :try_start_1b
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    new-instance v4, Lorg/json/JSONObject;

    .line 34
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_26
    .catchall {:try_start_1b .. :try_end_24} :catchall_4a

    .line 37
    move-object v1, v3

    .line 38
    goto :goto_32

    .line 39
    :catch_26
    move-exception v2

    .line 40
    goto :goto_3d

    .line 41
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 44
    move-result-object v2

    .line 45
    const-string v3, "No cached settings found."

    .line 47
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_3b
    .catchall {:try_start_28 .. :try_end_31} :catchall_37

    .line 50
    move-object v4, v1

    .line 51
    :goto_32
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 54
    move-object v1, v4

    .line 55
    goto :goto_49

    .line 56
    :catchall_37
    move-exception v2

    .line 57
    move-object v3, v1

    .line 58
    move-object v1, v2

    .line 59
    goto :goto_4b

    .line 60
    :catch_3b
    move-exception v2

    .line 61
    move-object v3, v1

    .line 62
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 65
    move-result-object v4

    .line 66
    const-string v5, "Failed to fetch cached settings"

    .line 68
    invoke-virtual {v4, v5, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_4a

    .line 71
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 74
    :goto_49
    return-object v1

    .line 75
    :catchall_4a
    move-exception v1

    .line 76
    :goto_4b
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 79
    throw v1
.end method

.method public writeCachedSettings(JLorg/json/JSONObject;)V
    .registers 7

    .line 1
    const-string v0, "Failed to close settings writer."

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "Writing settings to cache file..."

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 12
    if-eqz p3, :cond_44

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_e
    const-string v2, "expires_at"

    .line 17
    invoke-virtual {p3, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    new-instance p1, Ljava/io/FileWriter;

    .line 22
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/CachedSettingsIo;->getSettingsFile()Ljava/io/File;

    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_32
    .catchall {:try_start_e .. :try_end_1c} :catchall_30

    .line 29
    :try_start_1c
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_2d
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 39
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 42
    goto :goto_44

    .line 43
    :catchall_2a
    move-exception p2

    .line 44
    move-object v1, p1

    .line 45
    goto :goto_40

    .line 46
    :catch_2d
    move-exception p2

    .line 47
    move-object v1, p1

    .line 48
    goto :goto_33

    .line 49
    :catchall_30
    move-exception p2

    .line 50
    goto :goto_40

    .line 51
    :catch_32
    move-exception p2

    .line 52
    :goto_33
    :try_start_33
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 55
    move-result-object p1

    .line 56
    const-string p3, "Failed to cache settings"

    .line 58
    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    .line 61
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 64
    goto :goto_44

    .line 65
    :goto_40
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 68
    throw p2

    .line 69
    :cond_44
    :goto_44
    return-void
.end method
