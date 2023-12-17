.class public final Ls2/d$a;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    sget-object v1, Ls2/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2f

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_27

    .line 34
    sget-object v2, Ls2/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    goto :goto_f

    .line 40
    :cond_27
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    .line 43
    goto :goto_f

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 48
    :cond_2f
    return-void
.end method
