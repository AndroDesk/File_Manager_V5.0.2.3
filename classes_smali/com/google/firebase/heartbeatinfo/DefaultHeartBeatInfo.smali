.class public Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;
.super Ljava/lang/Object;
.source "DefaultHeartBeatInfo.java"

# interfaces
.implements Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final consumers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private storageProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$5;->lambdaFactory$()Ljava/util/concurrent/ThreadFactory;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/Lazy;

    invoke-static {p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$1;->lambdaFactory$(Landroid/content/Context;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, v0, p2, p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;-><init>(Lcom/google/firebase/inject/Provider;Ljava/util/Set;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Provider;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->consumers:Ljava/util/Set;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static component()Lcom/google/firebase/components/Component;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 3
    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroid/content/Context;

    .line 9
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    .line 16
    move-result-object v0

    .line 17
    const-class v1, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    .line 19
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$4;->lambdaFactory$()Lcom/google/firebase/components/ComponentFactory;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public static synthetic lambda$component$4(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    .line 3
    const-class v1, Landroid/content/Context;

    .line 5
    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 11
    const-class v2, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    .line 13
    invoke-interface {p0, v2}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 20
    return-object v0
.end method

.method public static synthetic lambda$getAndClearStoredHeartBeatInfo$2(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)Ljava/util/List;
    .registers 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 8
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getStoredHeartBeats(Z)Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getLastGlobalHeartBeat()J

    .line 22
    move-result-wide v2

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_4b

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;

    .line 39
    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    .line 42
    move-result-wide v5

    .line 43
    invoke-static {v2, v3, v5, v6}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->isSameDateUtc(JJ)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_33

    .line 49
    sget-object v6, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->COMBINED:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    sget-object v6, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->SDK:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 54
    :goto_35
    if-eqz v5, :cond_3b

    .line 56
    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    .line 59
    move-result-wide v2

    .line 60
    :cond_3b
    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getSdkName()Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    .line 67
    move-result-wide v7

    .line 68
    invoke-static {v5, v7, v8, v6}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->create(Ljava/lang/String;JLcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;)Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_1a

    .line 76
    :cond_4b
    const-wide/16 v4, 0x0

    .line 78
    cmp-long v1, v2, v4

    .line 80
    if-lez v1, :cond_54

    .line 82
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->updateGlobalHeartBeat(J)V

    .line 85
    :cond_54
    return-object v0
.end method

.method public static synthetic lambda$new$1(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getInstance(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    const-string v1, "heartbeat-information-executor"

    .line 5
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public static synthetic lambda$storeHeartBeatInfo$3(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;Ljava/lang/String;)Ljava/lang/Void;
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 7
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 13
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1d

    .line 19
    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 21
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 27
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->storeHeartBeatInformation(Ljava/lang/String;J)V

    .line 30
    :cond_1d
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method


# virtual methods
.method public getAndClearStoredHeartBeatInfo()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatResult;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)Ljava/util/concurrent/Callable;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getHeartBeatCode(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 7
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 13
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    .line 16
    move-result p1

    .line 17
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 19
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    .line 25
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendGlobalHeartBeat(J)Z

    .line 28
    move-result v0

    .line 29
    if-eqz p1, :cond_23

    .line 31
    if-eqz v0, :cond_23

    .line 33
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->COMBINED:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 35
    return-object p1

    .line 36
    :cond_23
    if-eqz v0, :cond_28

    .line 38
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 40
    return-object p1

    .line 41
    :cond_28
    if-eqz p1, :cond_2d

    .line 43
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->SDK:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 45
    return-object p1

    .line 46
    :cond_2d
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 48
    return-object p1
.end method

.method public storeHeartBeatInfo(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->consumers:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_e

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {p0, p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
