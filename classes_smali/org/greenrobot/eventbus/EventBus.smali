.class public Lorg/greenrobot/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/EventBus$PostCallback;,
        Lorg/greenrobot/eventbus/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

.field public static TAG:Ljava/lang/String; = "EventBus"

.field public static volatile defaultInstance:Lorg/greenrobot/eventbus/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

.field private final backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final eventInheritance:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final indexCount:I

.field private final logNoSubscriberMessages:Z

.field private final logSubscriberExceptions:Z

.field private final logger:Lorg/greenrobot/eventbus/Logger;

.field private final mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

.field private final mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

.field private final sendNoSubscriberEvent:Z

.field private final sendSubscriberExceptionEvent:Z

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/greenrobot/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final throwSubscriberException:Z

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/EventBusBuilder;

    .line 3
    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;-><init>()V

    .line 6
    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->DEFAULT_BUILDER:Lorg/greenrobot/eventbus/EventBusBuilder;

    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/EventBus;-><init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/eventbus/EventBusBuilder;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/greenrobot/eventbus/EventBus$1;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/EventBus$1;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->getLogger()Lorg/greenrobot/eventbus/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/EventBusBuilder;->getMainThreadSupport()Lorg/greenrobot/eventbus/MainThreadSupport;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    if-eqz v0, :cond_32

    .line 9
    invoke-interface {v0, p0}, Lorg/greenrobot/eventbus/MainThreadSupport;->createPoster(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/Poster;

    move-result-object v0

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    .line 10
    new-instance v0, Lorg/greenrobot/eventbus/BackgroundPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/BackgroundPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

    .line 11
    new-instance v0, Lorg/greenrobot/eventbus/AsyncPoster;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/AsyncPoster;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

    .line 12
    iget-object v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    iput v0, p0, Lorg/greenrobot/eventbus/EventBus;->indexCount:I

    .line 13
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    iget-object v1, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    iget-boolean v2, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->strictMethodVerification:Z

    iget-boolean v3, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->ignoreGeneratedIndex:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;-><init>(Ljava/util/List;ZZ)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    .line 14
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    .line 15
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logNoSubscriberMessages:Z

    .line 16
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendSubscriberExceptionEvent:Z

    .line 17
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendNoSubscriberEvent:Z

    .line 18
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->throwSubscriberException:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->throwSubscriberException:Z

    .line 19
    iget-boolean v0, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->eventInheritance:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    .line 20
    iget-object p1, p1, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_19

    .line 5
    aget-object v2, p1, v1

    .line 7
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_16

    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {p0, v2}, Lorg/greenrobot/eventbus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 23
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_2

    .line 26
    :cond_19
    return-void
.end method

.method public static builder()Lorg/greenrobot/eventbus/EventBusBuilder;
    .registers 1

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/EventBusBuilder;

    .line 3
    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;-><init>()V

    .line 6
    return-object v0
.end method

.method private checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .registers 4

    .line 1
    if-eqz p2, :cond_9

    .line 3
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->isMainThread()Z

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public static clearCaches()V
    .registers 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->clearCaches()V

    .line 4
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    return-void
.end method

.method public static getDefault()Lorg/greenrobot/eventbus/EventBus;
    .registers 2

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lorg/greenrobot/eventbus/EventBus;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lorg/greenrobot/eventbus/EventBus;

    .line 14
    invoke-direct {v1}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    .line 17
    sput-object v1, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->defaultInstance:Lorg/greenrobot/eventbus/EventBus;

    .line 26
    return-object v0
.end method

.method private handleSubscriberException(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    .line 1
    instance-of v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    .line 3
    if-eqz v0, :cond_4a

    .line 5
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    .line 7
    if-eqz v0, :cond_86

    .line 9
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 11
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 13
    const-string v2, "SubscriberExceptionEvent subscriber "

    .line 15
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v2

    .line 19
    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " threw an exception"

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0, v1, p1, p3}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    check-cast p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    .line 42
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 44
    const-string p3, "Initial event "

    .line 46
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p3

    .line 50
    iget-object v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    .line 52
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, " caused exception in "

    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v0, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    .line 62
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p3

    .line 69
    iget-object p2, p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    .line 71
    invoke-interface {p1, v1, p3, p2}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    goto :goto_86

    .line 75
    :cond_4a
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->throwSubscriberException:Z

    .line 77
    if-nez v0, :cond_87

    .line 79
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->logSubscriberExceptions:Z

    .line 81
    if-eqz v0, :cond_78

    .line 83
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 85
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 87
    const-string v2, "Could not dispatch event: "

    .line 89
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, " to subscribing class "

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v3, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2, p3}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :cond_78
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->sendSubscriberExceptionEvent:Z

    .line 123
    if-eqz v0, :cond_86

    .line 125
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    .line 127
    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 129
    invoke-direct {v0, p0, p3, p2, p1}, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 135
    :cond_86
    :goto_86
    return-void

    .line 136
    :cond_87
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    .line 138
    const-string p2, "Invoking subscriber failed"

    .line 140
    invoke-direct {p1, p2, p3}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    throw p1
.end method

.method private isMainThread()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadSupport:Lorg/greenrobot/eventbus/MainThreadSupport;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lorg/greenrobot/eventbus/MainThreadSupport;->isMainThread()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x1

    .line 11
    :goto_a
    return v0
.end method

.method private static lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/List;

    .line 10
    if-nez v1, :cond_27

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    move-object v2, p0

    .line 18
    :goto_11
    if-eqz v2, :cond_22

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 33
    move-result-object v2

    .line 34
    goto :goto_11

    .line 35
    :cond_22
    sget-object v2, Lorg/greenrobot/eventbus/EventBus;->eventTypesCache:Ljava/util/Map;

    .line 37
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_27
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :catchall_29
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    .line 44
    throw p0
.end method

.method private postSingleEvent(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    .line 7
    if-eqz v1, :cond_22

    .line 9
    invoke-static {v0}, Lorg/greenrobot/eventbus/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_12
    if-ge v3, v2, :cond_26

    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Ljava/lang/Class;

    .line 27
    invoke-direct {p0, p1, p2, v5}, Lorg/greenrobot/eventbus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    .line 30
    move-result v5

    .line 31
    or-int/2addr v4, v5

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    .line 38
    move-result v4

    .line 39
    :cond_26
    if-nez v4, :cond_58

    .line 41
    iget-boolean p2, p0, Lorg/greenrobot/eventbus/EventBus;->logNoSubscriberMessages:Z

    .line 43
    if-eqz p2, :cond_44

    .line 45
    iget-object p2, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 47
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string v3, "No subscribers registered for event "

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-interface {p2, v1, v2}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 69
    :cond_44
    iget-boolean p2, p0, Lorg/greenrobot/eventbus/EventBus;->sendNoSubscriberEvent:Z

    .line 71
    if-eqz p2, :cond_58

    .line 73
    const-class p2, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    .line 75
    if-eq v0, p2, :cond_58

    .line 77
    const-class p2, Lorg/greenrobot/eventbus/SubscriberExceptionEvent;

    .line 79
    if-eq v0, p2, :cond_58

    .line 81
    new-instance p2, Lorg/greenrobot/eventbus/NoSubscriberEvent;

    .line 83
    invoke-direct {p2, p0, p1}, Lorg/greenrobot/eventbus/NoSubscriberEvent;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 89
    :cond_58
    return-void
.end method

.method private postSingleEventForEventType(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/greenrobot/eventbus/EventBus$PostingThreadState;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p3

    .line 8
    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_43

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p3, :cond_42

    .line 14
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_42

    .line 20
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p3

    .line 24
    :cond_17
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_40

    .line 30
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lorg/greenrobot/eventbus/Subscription;

    .line 36
    iput-object p1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 38
    iput-object v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 40
    const/4 v2, 0x0

    .line 41
    :try_start_28
    iget-boolean v3, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    .line 43
    invoke-direct {p0, v1, p1, v3}, Lorg/greenrobot/eventbus/EventBus;->postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V

    .line 46
    iget-boolean v1, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_38

    .line 48
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 50
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 52
    iput-boolean v0, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    .line 54
    if-eqz v1, :cond_17

    .line 56
    goto :goto_40

    .line 57
    :catchall_38
    move-exception p1

    .line 58
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 60
    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 62
    iput-boolean v0, p2, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    .line 64
    throw p1

    .line 65
    :cond_40
    :goto_40
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :cond_42
    return v0

    .line 68
    :catchall_43
    move-exception p1

    .line 69
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    .line 70
    throw p1
.end method

.method private postToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Z)V
    .registers 6

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$2;->$SwitchMap$org$greenrobot$eventbus$ThreadMode:[I

    .line 3
    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 5
    iget-object v1, v1, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_5c

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_50

    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_44

    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq v0, v1, :cond_38

    .line 25
    const/4 p3, 0x5

    .line 26
    if-ne v0, p3, :cond_21

    .line 28
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->asyncPoster:Lorg/greenrobot/eventbus/AsyncPoster;

    .line 30
    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/AsyncPoster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 33
    goto :goto_5f

    .line 34
    :cond_21
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 36
    const-string p3, "Unknown thread mode: "

    .line 38
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p3

    .line 42
    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 44
    iget-object p1, p1, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p2

    .line 57
    :cond_38
    if-eqz p3, :cond_40

    .line 59
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->backgroundPoster:Lorg/greenrobot/eventbus/BackgroundPoster;

    .line 61
    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/BackgroundPoster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 64
    goto :goto_5f

    .line 65
    :cond_40
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 68
    goto :goto_5f

    .line 69
    :cond_44
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    .line 71
    if-eqz p3, :cond_4c

    .line 73
    invoke-interface {p3, p1, p2}, Lorg/greenrobot/eventbus/Poster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 76
    goto :goto_5f

    .line 77
    :cond_4c
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 80
    goto :goto_5f

    .line 81
    :cond_50
    if-eqz p3, :cond_56

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 86
    goto :goto_5f

    .line 87
    :cond_56
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->mainThreadPoster:Lorg/greenrobot/eventbus/Poster;

    .line 89
    invoke-interface {p3, p1, p2}, Lorg/greenrobot/eventbus/Poster;->enqueue(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 92
    goto :goto_5f

    .line 93
    :cond_5c
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 96
    :goto_5f
    return-void
.end method

.method private subscribe(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V
    .registers 10

    .line 1
    iget-object v0, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 3
    new-instance v1, Lorg/greenrobot/eventbus/Subscription;

    .line 5
    invoke-direct {v1, p1, p2}, Lorg/greenrobot/eventbus/Subscription;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    .line 8
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 10
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    if-nez v2, :cond_1c

    .line 18
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 25
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_22

    .line 29
    :cond_1c
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_93

    .line 35
    :goto_22
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_27
    if-gt v4, v3, :cond_40

    .line 42
    if-eq v4, v3, :cond_3d

    .line 44
    iget v5, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->priority:I

    .line 46
    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lorg/greenrobot/eventbus/Subscription;

    .line 52
    iget-object v6, v6, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 54
    iget v6, v6, Lorg/greenrobot/eventbus/SubscriberMethod;->priority:I

    .line 56
    if-le v5, v6, :cond_3a

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_27

    .line 62
    :cond_3d
    :goto_3d
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 65
    :cond_40
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 67
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/util/List;

    .line 73
    if-nez v2, :cond_54

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 82
    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_54
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-boolean p1, p2, Lorg/greenrobot/eventbus/SubscriberMethod;->sticky:Z

    .line 90
    if-eqz p1, :cond_92

    .line 92
    iget-boolean p1, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    .line 94
    if-eqz p1, :cond_89

    .line 96
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p1

    .line 106
    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_92

    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ljava/lang/Class;

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_69

    .line 130
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p0, v1, p2}, Lorg/greenrobot/eventbus/EventBus;->checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 137
    goto :goto_69

    .line 138
    :cond_89
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 140
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object p1

    .line 144
    invoke-direct {p0, v1, p1}, Lorg/greenrobot/eventbus/EventBus;->checkPostStickyEventToSubscription(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    .line 147
    :cond_92
    return-void

    .line 148
    :cond_93
    new-instance p2, Lorg/greenrobot/eventbus/EventBusException;

    .line 150
    const-string v1, "Subscriber "

    .line 152
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string p1, " already registered to event "

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    invoke-direct {p2, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 178
    throw p2
.end method

.method private unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Ljava/util/List;

    .line 9
    if-eqz p2, :cond_28

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_10
    if-ge v2, v0, :cond_28

    .line 19
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lorg/greenrobot/eventbus/Subscription;

    .line 25
    iget-object v4, v3, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 27
    if-ne v4, p1, :cond_25

    .line 29
    iput-boolean v1, v3, Lorg/greenrobot/eventbus/Subscription;->active:Z

    .line 31
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    add-int/lit8 v2, v2, -0x1

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 38
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_10

    .line 41
    :cond_28
    return-void
.end method


# virtual methods
.method public cancelEventDelivery(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    .line 9
    iget-boolean v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 11
    if-eqz v1, :cond_38

    .line 13
    if-eqz p1, :cond_30

    .line 15
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 17
    if-ne v1, p1, :cond_28

    .line 19
    iget-object p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 21
    iget-object p1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 23
    iget-object p1, p1, Lorg/greenrobot/eventbus/SubscriberMethod;->threadMode:Lorg/greenrobot/eventbus/ThreadMode;

    .line 25
    sget-object v1, Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;

    .line 27
    if-ne p1, v1, :cond_20

    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    .line 32
    return-void

    .line 33
    :cond_20
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    .line 35
    const-string v0, " event handlers may only abort the incoming event"

    .line 37
    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_28
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    .line 43
    const-string v0, "Only the currently handled event may be aborted"

    .line 45
    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

    .line 49
    :cond_30
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    .line 51
    const-string v0, "Event may not be null"

    .line 53
    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    :cond_38
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    .line 59
    const-string v0, "This method may only be called from inside event handling methods on the posting thread"

    .line 61
    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    return-object v0
.end method

.method public getLogger()Lorg/greenrobot/eventbus/Logger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 3
    return-object v0
.end method

.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    monitor-exit v0

    .line 15
    return-object p1

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public hasSubscriberForEvent(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/greenrobot/eventbus/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_2e

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    move v2, v0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_2e

    .line 15
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Class;

    .line 21
    monitor-enter p0

    .line 22
    :try_start_15
    iget-object v4, p0, Lorg/greenrobot/eventbus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 24
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2b

    .line 31
    if-eqz v3, :cond_28

    .line 33
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_28

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_c

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .line 46
    throw p1

    .line 47
    :cond_2e
    return v0
.end method

.method public invokeSubscriber(Lorg/greenrobot/eventbus/PendingPost;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    .line 3
    invoke-static {p1}, Lorg/greenrobot/eventbus/PendingPost;->releasePendingPost(Lorg/greenrobot/eventbus/PendingPost;)V

    .line 4
    iget-boolean p1, v1, Lorg/greenrobot/eventbus/Subscription;->active:Z

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p0, v1, v0}, Lorg/greenrobot/eventbus/EventBus;->invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public invokeSubscriber(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)V
    .registers 7

    .line 6
    :try_start_0
    iget-object v0, p1, Lorg/greenrobot/eventbus/Subscription;->subscriberMethod:Lorg/greenrobot/eventbus/SubscriberMethod;

    iget-object v0, v0, Lorg/greenrobot/eventbus/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/greenrobot/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_21

    :catch_10
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_19
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->handleSubscriberException(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method

.method public declared-synchronized isRegistered(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method public post(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;

    .line 9
    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 16
    if-nez p1, :cond_40

    .line 18
    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->isMainThread()Z

    .line 21
    move-result p1

    .line 22
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 27
    iget-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->canceled:Z

    .line 29
    if-nez p1, :cond_38

    .line 31
    :goto_1e
    const/4 p1, 0x0

    .line 32
    :try_start_1f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2d

    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    invoke-direct {p0, v2, v0}, Lorg/greenrobot/eventbus/EventBus;->postSingleEvent(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$PostingThreadState;)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_32

    .line 45
    goto :goto_1e

    .line 46
    :cond_2d
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 48
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    .line 50
    goto :goto_40

    .line 51
    :catchall_32
    move-exception v1

    .line 52
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isPosting:Z

    .line 54
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$PostingThreadState;->isMainThread:Z

    .line 56
    throw v1

    .line 57
    :cond_38
    new-instance p1, Lorg/greenrobot/eventbus/EventBusException;

    .line 59
    const-string v0, "Internal error. Abort state was not reset"

    .line 61
    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public postSticky(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 14
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    .line 20
    throw p1
.end method

.method public register(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->subscriberMethodFinder:Lorg/greenrobot/eventbus/SubscriberMethodFinder;

    .line 7
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    monitor-enter p0

    .line 12
    :try_start_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1f

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 28
    invoke-direct {p0, p1, v1}, Lorg/greenrobot/eventbus/EventBus;->subscribe(Ljava/lang/Object;Lorg/greenrobot/eventbus/SubscriberMethod;)V

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    .line 36
    throw p1
.end method

.method public removeAllStickyEvents()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw v1
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_f
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public removeStickyEvent(Ljava/lang/Object;)Z
    .registers 5

    .line 4
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 8
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 9
    monitor-exit v0

    return p1

    :cond_1b
    const/4 p1, 0x0

    .line 10
    monitor-exit v0

    return p1

    :catchall_1e
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "EventBus[indexCount="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/greenrobot/eventbus/EventBus;->indexCount:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", eventInheritance="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->eventInheritance:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "]"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/List;

    .line 10
    if-eqz v0, :cond_25

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1f

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Class;

    .line 28
    invoke-direct {p0, p1, v1}, Lorg/greenrobot/eventbus/EventBus;->unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    goto :goto_41

    .line 38
    :cond_25
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->logger:Lorg/greenrobot/eventbus/Logger;

    .line 40
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v3, "Subscriber to unregister was not registered before: "

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-interface {v0, v1, p1}, Lorg/greenrobot/eventbus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 66
    :goto_41
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_43
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method
