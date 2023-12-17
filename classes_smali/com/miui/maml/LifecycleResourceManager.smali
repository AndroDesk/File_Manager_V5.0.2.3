.class public Lcom/miui/maml/LifecycleResourceManager;
.super Lcom/miui/maml/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I

.field public static final TIME_HOUR:I

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x52f7196

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/LifecycleResourceManager;->TIME_DAY:I

    const v0, 0x3fc316

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/LifecycleResourceManager;->TIME_HOUR:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ResourceLoader;JJ)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    iput-wide p2, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    iput-wide p4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    return-void
.end method


# virtual methods
.method public checkCache()V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return-void

    :cond_f
    const-string v2, "LifecycleResourceManager"

    const-string v3, "begin check cache... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1e
    iget-object v4, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/collection/b$a;

    invoke-direct {v5, v4}, Landroidx/collection/b$a;-><init>(Landroidx/collection/b;)V

    :cond_28
    :goto_28
    invoke-virtual {v5}, Landroidx/collection/c;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v5}, Landroidx/collection/c;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v6, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/ResourceManager$BitmapInfo;

    if-eqz v6, :cond_28

    iget-wide v6, v6, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_28

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "LifecycleResourceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/b;

    invoke-virtual {v5, v4}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_1e .. :try_end_7e} :catchall_81

    sput-wide v0, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    return-void

    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v0
.end method

.method public finish(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    :cond_5
    invoke-super {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    return-void
.end method
