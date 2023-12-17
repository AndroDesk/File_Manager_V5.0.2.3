.class public Lorg/greenrobot/eventbus/EventBusBuilder;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public eventInheritance:Z

.field public executorService:Ljava/util/concurrent/ExecutorService;

.field public ignoreGeneratedIndex:Z

.field public logNoSubscriberMessages:Z

.field public logSubscriberExceptions:Z

.field public logger:Lorg/greenrobot/eventbus/Logger;

.field public mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

.field public sendNoSubscriberEvent:Z

.field public sendSubscriberExceptionEvent:Z

.field public skipMethodVerificationForClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public strictMethodVerification:Z

.field public subscriberInfoIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field

.field public throwSubscriberException:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions:Z

    .line 7
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages:Z

    .line 9
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    .line 11
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent:Z

    .line 13
    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->eventInheritance:Z

    .line 15
    sget-object v0, Lorg/greenrobot/eventbus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 17
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 19
    return-void
.end method


# virtual methods
.method public addIndex(Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method

.method public build()Lorg/greenrobot/eventbus/EventBus;
    .registers 2

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    .line 3
    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/EventBus;-><init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V

    .line 6
    return-object v0
.end method

.method public eventInheritance(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->eventInheritance:Z

    .line 3
    return-object p0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    return-object p0
.end method

.method public getAndroidMainLooperOrNull()Ljava/lang/Object;
    .registers 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object v0

    .line 6
    :catch_5
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method

.method public getLogger()Lorg/greenrobot/eventbus/Logger;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->isAndroidLogAvailable()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_19

    .line 12
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->getAndroidMainLooperOrNull()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_19

    .line 18
    new-instance v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;

    .line 20
    const-string v1, "EventBus"

    .line 22
    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;-><init>(Ljava/lang/String;)V

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v0, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;

    .line 28
    invoke-direct {v0}, Lorg/greenrobot/eventbus/Logger$SystemOutLogger;-><init>()V

    .line 31
    :goto_1e
    return-object v0
.end method

.method public getMainThreadSupport()Lorg/greenrobot/eventbus/MainThreadSupport;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->isAndroidLogAvailable()Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1a

    .line 13
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->getAndroidMainLooperOrNull()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    new-instance v1, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;

    .line 22
    check-cast v0, Landroid/os/Looper;

    .line 24
    invoke-direct {v1, v0}, Lorg/greenrobot/eventbus/MainThreadSupport$AndroidHandlerMainThreadSupport;-><init>(Landroid/os/Looper;)V

    .line 27
    :cond_1a
    :goto_1a
    return-object v1
.end method

.method public ignoreGeneratedIndex(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->ignoreGeneratedIndex:Z

    .line 3
    return-object p0
.end method

.method public installDefaultEventBus()Lorg/greenrobot/eventbus/EventBus;
    .registers 4

    .line 1
    const-class v0, Lorg/greenrobot/eventbus/EventBus;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 6
    if-nez v1, :cond_11

    .line 8
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBusBuilder;->build()Lorg/greenrobot/eventbus/EventBus;

    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 14
    sget-object v1, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :cond_11
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    .line 20
    const-string v2, "Default instance already exists. It may be only set once before it\'s used the first time to ensure consistent behavior."

    .line 22
    invoke-direct {v1, v2}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v1

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    .line 28
    throw v1
.end method

.method public logNoSubscriberMessages(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages:Z

    .line 3
    return-object p0
.end method

.method public logSubscriberExceptions(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions:Z

    .line 3
    return-object p0
.end method

.method public logger(Lorg/greenrobot/eventbus/Logger;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 3
    return-object p0
.end method

.method public sendNoSubscriberEvent(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent:Z

    .line 3
    return-object p0
.end method

.method public sendSubscriberExceptionEvent(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    .line 3
    return-object p0
.end method

.method public skipMethodVerificationFor(Ljava/lang/Class;)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/greenrobot/eventbus/EventBusBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method

.method public strictMethodVerification(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->strictMethodVerification:Z

    .line 3
    return-object p0
.end method

.method public throwSubscriberException(Z)Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/greenrobot/eventbus/EventBusBuilder;->throwSubscriberException:Z

    .line 3
    return-object p0
.end method
