.class public Lcom/miui/maml/LifecycleResourceManager;
.super Lcom/miui/maml/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/ResourceLoader;JJ)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 4
    iput-wide p2, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    .line 6
    iput-wide p4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    .line 8
    return-void
.end method


# virtual methods
.method public checkCache()V
    .registers 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    .line 7
    sub-long v2, v0, v2

    .line 9
    iget-wide v4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    .line 11
    cmp-long v2, v2, v4

    .line 13
    if-gez v2, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    const-string v2, "LifecycleResourceManager"

    .line 18
    const-string v3, "begin check cache... "

    .line 20
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 30
    monitor-enter v3

    .line 31
    :try_start_1e
    iget-object v4, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v5, Landroidx/collection/b$a;

    .line 38
    invoke-direct {v5, v4}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    .line 41
    :cond_28
    :goto_28
    invoke-virtual {v5}, Landroidx/collection/c;->hasNext()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_4c

    .line 47
    invoke-virtual {v5}, Landroidx/collection/c;->next()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 53
    sget-object v6, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 55
    invoke-virtual {v6, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 61
    if-eqz v6, :cond_28

    .line 63
    iget-wide v6, v6, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 65
    sub-long v6, v0, v6

    .line 67
    iget-wide v8, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    .line 69
    cmp-long v6, v6, v8

    .line 71
    if-lez v6, :cond_28

    .line 73
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_28

    .line 77
    :cond_4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v2

    .line 81
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_7d

    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 93
    const-string v5, "LifecycleResourceManager"

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v7, "remove cache: "

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v6

    .line 112
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v5, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 117
    invoke-virtual {v5, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v5, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    .line 122
    invoke-virtual {v5, v4}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    .line 125
    goto :goto_50

    .line 126
    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_1e .. :try_end_7e} :catchall_81

    .line 127
    sput-wide v0, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    .line 129
    return-void

    .line 130
    :catchall_81
    move-exception v0

    .line 131
    :try_start_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    .line 132
    throw v0
.end method

.method public finish(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    .line 6
    :cond_5
    invoke-super {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 9
    return-void
.end method

.method public pause()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    .line 4
    return-void
.end method
