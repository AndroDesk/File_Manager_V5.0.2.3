.class public Lcom/google/firebase/internal/DataCollectionConfigStorage;
.super Ljava/lang/Object;
.source "DataCollectionConfigStorage.java"


# static fields
.field public static final DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String; = "firebase_data_collection_default_enabled"

.field private static final FIREBASE_APP_PREFS:Ljava/lang/String; = "com.google.firebase.common.prefs:"


# instance fields
.field private dataCollectionDefaultEnabled:Z

.field private final deviceProtectedContext:Landroid/content/Context;

.field private final publisher:Lcom/google/firebase/events/Publisher;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/events/Publisher;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->directBootSafe(Landroid/content/Context;)Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "com.google.firebase.common.prefs:"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    iput-object p3, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->publisher:Lcom/google/firebase/events/Publisher;

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readAutoDataCollectionEnabled()Z

    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    .line 42
    return-void
.end method

.method private static directBootSafe(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private readAutoDataCollectionEnabled()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "firebase_data_collection_default_enabled"

    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readManifestDataCollectionEnabled()Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method private readManifestDataCollectionEnabled()Z
    .registers 5

    .line 1
    const-string v0, "firebase_data_collection_default_enabled"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_29

    .line 11
    iget-object v2, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->deviceProtectedContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const/16 v3, 0x80

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_29

    .line 25
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 27
    if-eqz v2, :cond_29

    .line 29
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_29

    .line 35
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 37
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 40
    move-result v0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_28} :catch_29

    .line 41
    return v0

    .line 42
    :catch_29
    :cond_29
    const/4 v0, 0x1

    .line 43
    return v0
.end method

.method private declared-synchronized updateDataCollectionDefaultEnabled(Z)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    .line 4
    if-eq v0, p1, :cond_18

    .line 6
    iput-boolean p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z

    .line 8
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->publisher:Lcom/google/firebase/events/Publisher;

    .line 10
    new-instance v1, Lcom/google/firebase/events/Event;

    .line 12
    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    .line 14
    new-instance v3, Lcom/google/firebase/DataCollectionDefaultChange;

    .line 16
    invoke-direct {v3, p1}, Lcom/google/firebase/DataCollectionDefaultChange;-><init>(Z)V

    .line 19
    invoke-direct {v1, v2, v3}, Lcom/google/firebase/events/Event;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 22
    invoke-interface {v0, v1}, Lcom/google/firebase/events/Publisher;->publish(Lcom/google/firebase/events/Event;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 25
    :cond_18
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1
.end method


# virtual methods
.method public declared-synchronized isEnabled()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized setEnabled(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_1a

    .line 4
    :try_start_3
    iget-object p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "firebase_data_collection_default_enabled"

    .line 12
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readManifestDataCollectionEnabled()Z

    .line 22
    move-result p1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->updateDataCollectionDefaultEnabled(Z)V

    .line 26
    goto :goto_32

    .line 27
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "firebase_data_collection_default_enabled"

    .line 41
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    invoke-direct {p0, p1}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->updateDataCollectionDefaultEnabled(Z)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_34

    .line 51
    :goto_32
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1
.end method
