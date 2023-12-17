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

.field private static final DEFAULT_RUNNING_TASKS:I = 0x5

.field private static final HTTP_STATUS_OK_CODE:I = 0xc8

.field private static final REQUEST_TIME_OUT:I = 0x7530

.field private static final TEST_RESPONSE_DELAY:I = 0xc8

.field private static final TEST_RESPONSE_STATUS_CODE:I = 0x400

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 6
    invoke-direct {v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;-><init>()V

    .line 9
    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    .line 14
    const/4 v0, 0x5

    .line 15
    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    .line 19
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 27
    return-void
.end method

.method public static synthetic access$000(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/net/XHttpClient;->finishTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    .line 3
    return-object p0
.end method

.method private declared-synchronized addTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method private declared-synchronized finishTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget p1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 4
    const/4 v0, 0x1

    .line 5
    sub-int/2addr p1, v0

    .line 6
    iput p1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "Task--"

    .line 14
    aput-object v3, v1, v2

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v1, v0

    .line 22
    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 25
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method private scheduleTasksLocked()V
    .registers 5

    .line 1
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 3
    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    .line 5
    if-ge v0, v1, :cond_4c

    .line 7
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_4c

    .line 16
    :cond_f
    :goto_f
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 18
    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ge v0, v1, :cond_39

    .line 23
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 25
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_39

    .line 31
    new-instance v0, Ljava/lang/Thread;

    .line 33
    iget-object v1, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Runnable;

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 49
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 52
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 54
    add-int/2addr v0, v2

    .line 55
    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 57
    goto :goto_f

    .line 58
    :cond_39
    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    const/4 v1, 0x0

    .line 62
    const-string v3, "task++"

    .line 64
    aput-object v3, v0, v1

    .line 66
    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v1

    .line 72
    aput-object v1, v0, v2

    .line 74
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 77
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

    .line 2
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

    .line 1
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

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 2
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

    .line 3
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

    .line 7
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    .line 8
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

    .line 9
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

    .line 4
    iget-object v0, v9, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    move-object v4, p3

    move-object v1, p4

    .line 5
    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const-string v1, "POST"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    move-object/from16 v8, p6

    .line 6
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

    .line 10
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    .line 11
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

    .line 12
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

    .line 1
    new-instance v10, Lmiui/cloud/net/XHttpClient$HttpRequest;

    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object/from16 v6, p5

    .line 11
    move-object/from16 v7, p6

    .line 13
    move-object/from16 v8, p7

    .line 15
    move-object/from16 v9, p8

    .line 17
    invoke-direct/range {v0 .. v9}, Lmiui/cloud/net/XHttpClient$HttpRequest;-><init>(Lmiui/cloud/net/XHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    .line 20
    move-object v0, p0

    .line 21
    invoke-direct {p0, v10}, Lmiui/cloud/net/XHttpClient;->addTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    .line 24
    return-void
.end method

.method public setDataProcessorFactor(Lmiui/cloud/net/XHttpClient$DataProcessorFactor;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 6
    return-void
.end method

.method public declared-synchronized setMaxRunningTasks(I)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput p1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    .line 4
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public setUserAgentNameProvider(Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    .line 3
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

    .line 1
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

    .line 2
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncPost(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 12

    .line 7
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    .line 8
    invoke-virtual {v0, v1, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v7

    const-string v3, "POST"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    .line 9
    invoke-virtual/range {v2 .. v8}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public syncPost(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .registers 12

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 2
    invoke-virtual {v0, p3, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v6

    const-string v2, "POST"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .line 3
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

    .line 10
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v1, "utf-8"

    .line 11
    invoke-virtual {v0, v1, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v7

    const-string v3, "POST"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 12
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

    .line 4
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 5
    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v6

    const-string v2, "POST"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 6
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

    .line 1
    new-instance v0, Lmiui/cloud/common/XWrapper;

    .line 3
    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 6
    new-instance v10, Lmiui/cloud/common/XBlockCallback;

    .line 8
    const-class v1, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    .line 10
    invoke-direct {v10, v1}, Lmiui/cloud/common/XBlockCallback;-><init>(Ljava/lang/Class;)V

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move-object v4, p3

    .line 18
    move-object v5, p4

    .line 19
    move-object/from16 v6, p5

    .line 21
    move-object/from16 v7, p6

    .line 23
    move-object v8, v10

    .line 24
    invoke-virtual/range {v1 .. v9}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    .line 27
    new-instance v1, Lmiui/cloud/net/XHttpClient$1;

    .line 29
    move-object v2, p0

    .line 30
    invoke-direct {v1, p0, v0}, Lmiui/cloud/net/XHttpClient$1;-><init>(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/common/XWrapper;)V

    .line 33
    invoke-virtual {v10, v1}, Lmiui/cloud/common/XBlockCallback;->waitForCallBack(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lmiui/cloud/net/XHttpClient$HttpResponse;

    .line 42
    return-object v0
.end method
