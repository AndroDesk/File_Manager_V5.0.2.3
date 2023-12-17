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

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60


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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private declared-synchronized checkCache(Ljava/lang/Object;)V
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "RendererCoreCache"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "checkCache: "

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    .line 32
    if-nez v0, :cond_39

    .line 34
    const-string v0, "RendererCoreCache"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v2, "checkCache: the key does not exist, "

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_a9

    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_39
    :try_start_39
    iget-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_a9

    .line 60
    const-wide v3, 0x7fffffffffffffffL

    .line 65
    cmp-long v1, v1, v3

    .line 67
    if-nez v1, :cond_46

    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_46
    :try_start_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    move-result-wide v1

    .line 75
    iget-wide v3, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 77
    sub-long/2addr v1, v3

    .line 78
    iget-wide v3, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 80
    cmp-long v3, v1, v3

    .line 82
    if-ltz v3, :cond_6f

    .line 84
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "RendererCoreCache"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v2, "checkCache removed: "

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_a7

    .line 112
    :cond_6f
    const-wide/16 v3, 0x0

    .line 114
    cmp-long v5, v1, v3

    .line 116
    if-gez v5, :cond_7c

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    move-result-wide v1

    .line 122
    iput-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 124
    move-wide v1, v3

    .line 125
    :cond_7c
    iget-object v3, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 127
    iget-object v4, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    .line 129
    iget-wide v5, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 131
    sub-long/2addr v5, v1

    .line 132
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    const-string v3, "RendererCoreCache"

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v5, "checkCache resheduled: "

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string p1, " after "

    .line 152
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-wide v5, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 157
    sub-long/2addr v5, v1

    .line 158
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_46 .. :try_end_a7} :catchall_a9

    .line 168
    :goto_a7
    monitor-exit p0

    .line 169
    return-void

    .line 170
    :catchall_a9
    move-exception p1

    .line 171
    monitor-exit p0

    .line 172
    throw p1
.end method

.method private get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Ljava/lang/String;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
    .registers 9

    .line 9
    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    if-eqz p5, :cond_13

    .line 10
    new-instance p6, Lcom/miui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {p6, p2, p5}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V

    invoke-static {p6}, Lcom/miui/maml/ScreenElementRootFactory;->create(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ScreenElementRoot;

    move-result-object p2

    goto :goto_1c

    .line 11
    :cond_13
    new-instance p5, Lcom/miui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {p5, p2, p6}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p5}, Lcom/miui/maml/ScreenElementRootFactory;->create(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ScreenElementRoot;

    move-result-object p2

    :goto_1c
    const/4 p5, 0x0

    if-nez p2, :cond_36

    .line 12
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

    .line 13
    invoke-interface {p7, p2}, Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;->onCreateRoot(Lcom/miui/maml/ScreenElementRoot;)V

    :cond_3b
    const/4 p6, 0x0

    .line 14
    invoke-virtual {p2, p6}, Lcom/miui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 15
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result p6

    if-eqz p6, :cond_4a

    .line 16
    new-instance p5, Lcom/miui/maml/RendererCore;

    invoke-direct {p5, p2}, Lcom/miui/maml/RendererCore;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 17
    :cond_4a
    new-instance p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    invoke-direct {p2, p5}, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;-><init>(Lcom/miui/maml/RendererCore;)V

    const-wide p6, 0x7fffffffffffffffL

    .line 18
    iput-wide p6, p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 19
    iput-wide p3, p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    if-eqz p5, :cond_64

    .line 20
    invoke-virtual {p5, p0}, Lcom/miui/maml/RendererCore;->setOnReleaseListener(Lcom/miui/maml/RendererCore$OnReleaseListener;)V

    .line 21
    new-instance p3, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-direct {p3, p0, p1}, Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;-><init>(Lcom/miui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    iput-object p3, p2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    .line 22
    :cond_64
    iget-object p3, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method


# virtual methods
.method public declared-synchronized OnRendererCoreReleased(Lcom/miui/maml/RendererCore;)Z
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "RendererCoreCache"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "OnRendererCoreReleased: "

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_46

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    .line 53
    iget-object v4, v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    .line 55
    if-ne v4, p1, :cond_21

    .line 57
    invoke-virtual {p0, v1}, Lcom/miui/maml/util/RendererCoreCache;->release(Ljava/lang/Object;)V

    .line 60
    iget-wide v0, v3, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_48

    .line 62
    const-wide/16 v3, 0x0

    .line 64
    cmp-long p1, v0, v3

    .line 66
    if-nez p1, :cond_44

    .line 68
    const/4 v2, 0x1

    .line 69
    :cond_44
    monitor-exit p0

    .line 70
    return v2

    .line 71
    :cond_46
    monitor-exit p0

    .line 72
    return v2

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    if-eqz p1, :cond_1d

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 3
    iput-wide p2, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 4
    iget-object p2, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object p3, p1, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    .line 5
    monitor-exit p0

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    .line 6
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

    .line 8
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

    .line 7
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "RendererCoreCache"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "release: "

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    .line 32
    if-eqz v0, :cond_7b

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 40
    iget-wide v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 42
    const-wide/16 v3, 0x0

    .line 44
    cmp-long v1, v1, v3

    .line 46
    if-nez v1, :cond_4b

    .line 48
    iget-object v0, p0, Lcom/miui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "RendererCoreCache"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, "removed: "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_7b

    .line 76
    :cond_4b
    const-string v1, "RendererCoreCache"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v3, "scheduled release: "

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string p1, " after "

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-wide v3, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 98
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 110
    iget-object v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object p1, p0, Lcom/miui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    .line 117
    iget-object v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

    .line 119
    iget-wide v2, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    .line 121
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7b
    .catchall {:try_start_1 .. :try_end_7b} :catchall_7d

    .line 124
    :cond_7b
    :goto_7b
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :catchall_7d
    move-exception p1

    .line 127
    monitor-exit p0

    .line 128
    throw p1
.end method
