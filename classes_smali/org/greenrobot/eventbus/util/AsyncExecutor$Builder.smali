.class public Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private eventBus:Lorg/greenrobot/eventbus/EventBus;

.field private failureEventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/greenrobot/eventbus/util/AsyncExecutor$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/greenrobot/eventbus/util/AsyncExecutor;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->buildForScope(Ljava/lang/Object;)Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public buildForScope(Ljava/lang/Object;)Lorg/greenrobot/eventbus/util/AsyncExecutor;
    .registers 9

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 11
    :cond_a
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 13
    if-nez v0, :cond_14

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 21
    :cond_14
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 23
    if-nez v0, :cond_1c

    .line 25
    const-class v0, Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;

    .line 27
    iput-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 29
    :cond_1c
    new-instance v0, Lorg/greenrobot/eventbus/util/AsyncExecutor;

    .line 31
    iget-object v2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 33
    iget-object v3, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 35
    iget-object v4, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v1, v0

    .line 39
    move-object v5, p1

    .line 40
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/eventbus/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lorg/greenrobot/eventbus/util/AsyncExecutor$1;)V

    .line 43
    return-object v0
.end method

.method public eventBus(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 3
    return-object p0
.end method

.method public failureEventType(Ljava/lang/Class;)Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 3
    return-object p0
.end method

.method public threadPool(Ljava/util/concurrent/Executor;)Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 3
    return-object p0
.end method
