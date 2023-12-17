.class public Lcom/google/android/datatransport/runtime/TransportRuntime;
.super Ljava/lang/Object;
.source "TransportRuntime.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/TransportInternal;


# static fields
.field private static volatile instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;


# instance fields
.field private final eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

.field private final uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field private final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .registers 6
    .param p1  # Lcom/google/android/datatransport/runtime/time/Clock;
        .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
        .end annotation
    .end param
    .param p2  # Lcom/google/android/datatransport/runtime/time/Clock;
        .annotation build Lcom/google/android/datatransport/runtime/time/Monotonic;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    .line 10
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 12
    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->ensureContextsScheduled()V

    .line 15
    return-void
.end method

.method private convert(Lcom/google/android/datatransport/runtime/SendRequest;)Lcom/google/android/datatransport/runtime/EventInternal;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->builder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 7
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 17
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEncoding()Lcom/google/android/datatransport/Encoding;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getPayload()[B

    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v1, v2, v3}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/datatransport/Event;->getCode()Ljava/lang/Integer;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public static getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;->getTransportRuntime()Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "Not initialized!"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method private static getSupportedEncodings(Lcom/google/android/datatransport/runtime/Destination;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/Destination;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/EncodedDestination;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p0, Lcom/google/android/datatransport/runtime/EncodedDestination;

    .line 7
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/EncodedDestination;->getSupportedEncodings()Ljava/util/Set;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    const-string p0, "proto"

    .line 18
    invoke-static {p0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 3
    if-nez v0, :cond_1e

    .line 5
    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 10
    if-nez v1, :cond_19

    .line 12
    invoke-static {}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->builder()Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;->setApplicationContext(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;->build()Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 26
    :cond_19
    monitor-exit v0

    .line 27
    goto :goto_1e

    .line 28
    :catchall_1b
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    .line 30
    throw p0

    .line 31
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static withInstance(Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 6
    sput-object p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 9
    :try_start_8
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    .line 12
    monitor-enter v0

    .line 13
    :try_start_c
    sput-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    .line 19
    throw p0

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    monitor-enter v0

    .line 22
    :try_start_15
    sput-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    .line 25
    throw p0

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw p0

    .line 29
    :catchall_1c
    move-exception p0

    .line 30
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .line 31
    throw p0
.end method


# virtual methods
.method public getUploader()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 3
    return-object v0
.end method

.method public newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;
    .registers 6

    .line 4
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;

    .line 5
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getSupportedEncodings(Lcom/google/android/datatransport/runtime/Destination;)Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v2

    .line 7
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/Destination;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v2

    .line 8
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/Destination;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setExtras([B)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportInternal;)V

    return-object v0
.end method

.method public newFactory(Ljava/lang/String;)Lcom/google/android/datatransport/TransportFactory;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getSupportedEncodings(Lcom/google/android/datatransport/runtime/Destination;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportInternal;)V

    return-object v0
.end method

.method public send(Lcom/google/android/datatransport/runtime/SendRequest;Lcom/google/android/datatransport/TransportScheduleCallback;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/datatransport/Event;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext;->withPriority(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->convert(Lcom/google/android/datatransport/runtime/SendRequest;)Lcom/google/android/datatransport/runtime/EventInternal;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/Scheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    .line 26
    return-void
.end method
