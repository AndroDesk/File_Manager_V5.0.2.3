.class Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
.super Ljava/lang/Object;
.source "HeartBeatInfoStorage.java"


# static fields
.field private static final FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final GLOBAL:Ljava/lang/String; = "fire-global"

.field private static final HEART_BEAT_COUNT_LIMIT:I = 0xc8

.field private static final HEART_BEAT_COUNT_TAG:Ljava/lang/String; = "fire-count"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "FirebaseAppHeartBeat"

.field private static final STORAGE_PREFERENCES_NAME:Ljava/lang/String; = "FirebaseAppHeartBeatStorage"

.field private static instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;


# instance fields
.field private final heartBeatSharedPreferences:Landroid/content/SharedPreferences;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "dd/MM/yyyy z"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->FORMATTER:Ljava/text/SimpleDateFormat;

    .line 10
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FirebaseAppHeartBeat"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "FirebaseAppHeartBeatStorage"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private declared-synchronized cleanUpStoredHeartBeats()V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    const-string v1, "fire-count"

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v0

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v3

    .line 31
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_3c

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 49
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    move-result-wide v4

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_1e

    .line 61
    :cond_3c
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v2

    .line 68
    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_7a

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Long;

    .line 80
    iget-object v4, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    .line 82
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    move-result-object v4

    .line 86
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 99
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 102
    move-result-object v3

    .line 103
    const-string v4, "fire-count"

    .line 105
    const-wide/16 v5, 0x1

    .line 107
    sub-long/2addr v0, v5

    .line 108
    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 111
    move-result-object v3

    .line 112
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_7c

    .line 115
    const-wide/16 v3, 0x64

    .line 117
    cmp-long v3, v0, v3

    .line 119
    if-gtz v3, :cond_43

    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :cond_7a
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :catchall_7c
    move-exception v0

    .line 126
    monitor-exit p0

    .line 127
    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .registers 3

    .line 1
    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 10
    invoke-direct {v1, p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 15
    :cond_e
    sget-object p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->instance:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public static isSameDateUtc(JJ)Z
    .registers 5

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 6
    new-instance p0, Ljava/util/Date;

    .line 8
    invoke-direct {p0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 11
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->FORMATTER:Ljava/text/SimpleDateFormat;

    .line 13
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    xor-int/lit8 p0, p0, 0x1

    .line 27
    return p0
.end method


# virtual methods
.method public declared-synchronized clearStoredHeartBeats()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "fire-count"

    .line 23
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method

.method public getHeartBeatCount()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    const-string v1, "fire-count"

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    long-to-int v0, v0

    .line 12
    return v0
.end method

.method public declared-synchronized getLastGlobalHeartBeat()J
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    const-string v1, "fire-global"

    .line 6
    const-wide/16 v2, -0x1

    .line 8
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return-wide v0

    .line 14
    :catchall_d
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public declared-synchronized getStoredHeartBeats(Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_38

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 42
    move-result-wide v3

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-static {v2, v3, v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->create(Ljava/lang/String;J)Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_14

    .line 57
    :cond_38
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 60
    if-eqz p1, :cond_40

    .line 62
    invoke-virtual {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->clearStoredHeartBeats()V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 65
    :cond_40
    monitor-exit p0

    .line 66
    return-object v0

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    monitor-exit p0

    .line 69
    throw p1
.end method

.method public declared-synchronized shouldSendGlobalHeartBeat(J)Z
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "fire-global"

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    .line 7
    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_9
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized shouldSendSdkHeartBeat(Ljava/lang/String;J)Z
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_2a

    .line 11
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 13
    const-wide/16 v2, -0x1

    .line 15
    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 18
    move-result-wide v2

    .line 19
    invoke-static {v2, v3, p2, p3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->isSameDateUtc(JJ)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_27

    .line 25
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_39

    .line 38
    monitor-exit p0

    .line 39
    return v1

    .line 40
    :cond_27
    const/4 p1, 0x0

    .line 41
    monitor-exit p0

    .line 42
    return p1

    .line 43
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_39

    .line 56
    monitor-exit p0

    .line 57
    return v1

    .line 58
    :catchall_39
    move-exception p1

    .line 59
    monitor-exit p0

    .line 60
    throw p1
.end method

.method public declared-synchronized storeHeartBeatInformation(Ljava/lang/String;J)V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    const-string v1, "fire-count"

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->heartBeatSharedPreferences:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    move-result-object v2

    .line 18
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    invoke-interface {v2, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    iget-object p1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object p1

    .line 35
    const-string p2, "fire-count"

    .line 37
    const-wide/16 v2, 0x1

    .line 39
    add-long/2addr v0, v2

    .line 40
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    const-wide/16 p1, 0xc8

    .line 49
    cmp-long p1, v0, p1

    .line 51
    if-lez p1, :cond_37

    .line 53
    invoke-direct {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->cleanUpStoredHeartBeats()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 56
    :cond_37
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_39
    move-exception p1

    .line 59
    monitor-exit p0

    .line 60
    throw p1
.end method

.method public declared-synchronized updateGlobalHeartBeat(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "fire-global"

    .line 10
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method
