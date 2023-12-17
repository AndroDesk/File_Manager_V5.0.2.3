.class public Lcom/miui/maml/util/RendererCoreCache;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Lcom/miui/maml/RendererCore$OnReleaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;,
        Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;,
        Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCoreCache"

.field public static final TIME_DAY:I

.field public static final TIME_HOUR:I

.field public static final TIME_MIN:I


# instance fields
.field private mCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x52f7196

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/util/RendererCoreCache;->TIME_DAY:I

    const v0, 0x3fc316

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/util/RendererCoreCache;->TIME_HOUR:I

    const v0, 0x9c7f6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/miui/maml/util/RendererCoreCache;->TIME_MIN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/maml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized checkCache(Ljava/lang/Object;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v0, "RendererCoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    if-nez v0, :cond_39

    const-string v0, "RendererCoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCache: the key does not exist, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_a9

    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    iget-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_a9

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_46

    monitor-exit p0

    return-void

    :cond_46
    :try_start_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_6f

    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RendererCoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCache removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :cond_6f
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_7c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    move-wide v1, v3

    :cond_7c
    iget-object v3, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v5, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache resheduled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_46 .. :try_end_a7} :catchall_a9

    :goto_a7
    monitor-exit p0

    return-void

    :catchall_a9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Ljava/lang/String;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
    .registers 9

    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    if-eqz p5, :cond_13

    new-instance p6, Lcom/miui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {p6, p2, p5}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V

    invoke-static {p6}, Lcom/miui/maml/ScreenElementRootFactory;->create(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ScreenElementRoot;

    move-result-object p2

    goto :goto_1c

    :cond_13
    new-instance p5, Lcom/miui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {p5, p2, p6}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p5}, Lcom/miui/maml/ScreenElementRootFactory;->create(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ScreenElementRoot;

    move-result-object p2

    :goto_1c
    const/4 p5, 0x0

    if-nez p2, :cond_36

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to get RendererCoreInfo"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RendererCoreCache"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5

    :cond_36
    if-eqz p7, :cond_3b

    invoke-interface {p7, p2}, Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;->onCreateRoot(Lcom/miui/maml/ScreenElementRoot;)V

    :cond_3b
    const/4 p6, 0x0

    invoke-virtual {p2, p6}, Lcom/miui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result p6

    if-eqz p6, :cond_4a

    new-instance p5, Lcom/miui/maml/RendererCore;

    invoke-direct {p5, p2}, Lcom/miui/maml/RendererCore;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    :cond_4a
    new-instance p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    invoke-direct {p2, p5}, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;-><init>(Lcom/miui/maml/RendererCore;)V

    const-wide p6, 0x7fffffffffffffffL

    iput-wide p6, p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iput-wide p3, p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    if-eqz p5, :cond_64

    invoke-virtual {p5, p0}, Lcom/miui/maml/RendererCore;->setOnReleaseListener(Lcom/miui/maml/RendererCore$OnReleaseListener;)V

    new-instance p3, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-direct {p3, p0, p1}, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;-><init>(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    iput-object p3, p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    :cond_64
    iget-object p3, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method


# virtual methods
.method public declared-synchronized OnRendererCoreReleased(Lcom/miui/maml/RendererCore;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "RendererCoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnRendererCoreReleased: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    iget-object v4, v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-ne v4, p1, :cond_21

    invoke-virtual {p0, v1}, Lcom/miui/maml/util/RendererCoreCache;->release(Ljava/lang/Object;)V

    iget-wide v0, v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_48

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-nez p1, :cond_44

    const/4 v2, 0x1

    :cond_44
    monitor-exit p0

    return v2

    :cond_46
    monitor-exit p0

    return v2

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    if-eqz p1, :cond_1d

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iput-wide p2, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    iget-object p2, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object p3, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    monitor-exit p0

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
    .registers 15

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    :try_start_8
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Ljava/lang/String;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
    .registers 15

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    :try_start_8
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Ljava/lang/String;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "RendererCoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    if-eqz v0, :cond_7b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iget-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4b

    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RendererCoreCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_4b
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduled release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v2, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7b
    .catchall {:try_start_1 .. :try_end_7b} :catchall_7d

    :cond_7b
    :goto_7b
    monitor-exit p0

    return-void

    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
