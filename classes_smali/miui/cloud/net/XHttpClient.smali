.class public final Lmiui/cloud/net/XHttpClient;
.super Ljava/lang/Object;
.source "XHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/net/XHttpClient$HttpRequest;,
        Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;,
        Lmiui/cloud/net/XHttpClient$DataProcessorFactor;,
        Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;,
        Lmiui/cloud/net/XHttpClient$ISendDataProcessor;,
        Lmiui/cloud/net/XHttpClient$DataConversionException;,
        Lmiui/cloud/net/XHttpClient$IResponseHandler;,
        Lmiui/cloud/net/XHttpClient$HttpResponse;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_OUT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_RUNNING_TASKS:I

.field private static final HTTP_STATUS_OK_CODE:I

.field private static final REQUEST_TIME_OUT:I

.field private static final TEST_RESPONSE_DELAY:I

.field private static final TEST_RESPONSE_STATUS_CODE:I

.field private static final TEST_RESPONSE_STATUS_MSG:Ljava/lang/String; = "TEST OK"

.field private static final TEST_URL:Ljava/lang/String; = "[TEST]"


# instance fields
.field private volatile mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

.field private mMaxRuningTaskCount:I

.field private mPendingTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lmiui/cloud/net/XHttpClient$HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTaskCount:I

.field private volatile mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/net/XHttpClient;->DEFAULT_RUNNING_TASKS:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/net/XHttpClient;->HTTP_STATUS_OK_CODE:I

    const v0, 0x958a6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/net/XHttpClient;->REQUEST_TIME_OUT:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/net/XHttpClient;->TEST_RESPONSE_DELAY:I

    const v0, 0x92996

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiui/cloud/net/XHttpClient;->TEST_RESPONSE_STATUS_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    invoke-direct {v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    const/4 v0, 0x5

    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    return-void
.end method

.method public static synthetic access$000(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/cloud/net/XHttpClient;->finishTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method

.method public static synthetic access$100(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;
    .registers 1

    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    return-object p0
.end method

.method public static synthetic access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;
    .registers 1

    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    return-object p0
.end method

.method private declared-synchronized addTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized finishTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget p1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Task--"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private scheduleTasksLocked()V
    .registers 5

    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    if-ge v0, v1, :cond_4c

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4c

    :cond_f
    :goto_f
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_39

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    goto :goto_f

    :cond_39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "task++"

    aput-object v3, v0, v1

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method public asyncGet(Ljava/lang/String;Ljava/util/Map;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncGet(Ljava/lang/String;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    invoke-virtual {v0, p3, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v6

    const-string v2, "POST"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/lang/Object;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v7

    const-string v3, "POST"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v2 .. v10}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    move-object v4, p3

    move-object v1, p4

    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const-string v1, "POST"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const-string v1, "POST"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v10, Lmiui/cloud/net/XHttpClient$HttpRequest;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lmiui/cloud/net/XHttpClient$HttpRequest;-><init>(Lmiui/cloud/net/XHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lmiui/cloud/net/XHttpClient;->addTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method

.method public setDataProcessorFactor(Lmiui/cloud/net/XHttpClient$DataProcessorFactor;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    return-void
.end method

.method public declared-synchronized setMaxRunningTasks(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUserAgentNameProvider(Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;)V
    .registers 2

    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    return-void
.end method

.method public syncGet(Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 9

    const-string v1, "GET"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncGet(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncPost(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 12

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v7

    const-string v3, "POST"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncPost(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 12

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    invoke-virtual {v0, p3, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v6

    const-string v2, "POST"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v7

    const-string v3, "POST"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v6

    const-string v2, "POST"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    new-instance v10, Lmiui/cloud/common/XBlockCallback;

    const-class v1, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    invoke-direct {v10, v1}, Lmiui/cloud/common/XBlockCallback;-><init>(Ljava/lang/Class;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v10

    invoke-virtual/range {v1 .. v9}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    new-instance v1, Lmiui/cloud/net/XHttpClient$1;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lmiui/cloud/net/XHttpClient$1;-><init>(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/common/XWrapper;)V

    invoke-virtual {v10, v1}, Lmiui/cloud/common/XBlockCallback;->waitForCallBack(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$HttpResponse;

    return-object v0
.end method
