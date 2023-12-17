.class public Lcom/android/fileexplorer/util/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;,
        Lcom/android/fileexplorer/util/ThreadPoolManager$ThreadPoolManagerHolder;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x200

.field public static final CPU_COUNT:I

.field private static final TAG:Ljava/lang/String; = "ThreadPoolManager"


# instance fields
.field private mPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/util/ThreadPoolManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/ThreadPoolManager;-><init>()V

    return-void
.end method

.method public static getCPUExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->CPU:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static getIOExecutors()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->IO:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/ThreadPoolManager$ThreadPoolManagerHolder;->sInstance:Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 3
    return-object v0
.end method

.method public static getSingleExecutors()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->SINGLE:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public getNewExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    sget v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 11
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    const/16 v0, 0x200

    .line 17
    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 20
    new-instance v7, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    .line 22
    const/16 v0, 0xa

    .line 24
    const-string v3, "file_io_pool"

    .line 26
    invoke-direct {v7, p0, v0, v3}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    .line 29
    new-instance v8, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    .line 31
    invoke-direct {v8, p0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    .line 34
    const-wide/16 v3, 0x3c

    .line 36
    move-object v0, v9

    .line 37
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 40
    return-object v9
.end method

.method public getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 13
    if-eqz v2, :cond_1b

    .line 15
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1b

    .line 21
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1b

    .line 27
    return-object v2

    .line 28
    :cond_1b
    sget-object v2, Lcom/android/fileexplorer/util/ThreadPoolManager$1;->$SwitchMap$com$android$fileexplorer$util$ThreadPoolManager$POOL_TYPE:[I

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 33
    move-result v3

    .line 34
    aget v2, v2, v3

    .line 36
    const/16 v3, 0xa

    .line 38
    const/16 v4, 0x200

    .line 40
    const/4 v5, 0x1

    .line 41
    if-eq v2, v5, :cond_d1

    .line 43
    const/4 v6, 0x2

    .line 44
    if-eq v2, v6, :cond_ad

    .line 46
    const/4 v7, 0x3

    .line 47
    if-eq v2, v7, :cond_86

    .line 49
    const/4 v7, 0x4

    .line 50
    if-eq v2, v7, :cond_5e

    .line 52
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    sget v7, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 56
    add-int/lit8 v9, v7, 0x1

    .line 58
    mul-int/2addr v7, v6

    .line 59
    add-int/lit8 v10, v7, 0x1

    .line 61
    const-wide/16 v11, 0x3c

    .line 63
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 67
    invoke-direct {v14, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 70
    new-instance v15, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    .line 72
    const-string v4, "fe_io_pool"

    .line 74
    invoke-direct {v15, v0, v3, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    .line 77
    new-instance v3, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    .line 79
    invoke-direct {v3, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    .line 82
    move-object v8, v2

    .line 83
    move-object/from16 v16, v3

    .line 85
    invoke-direct/range {v8 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 88
    iget-object v3, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    .line 90
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto/16 :goto_f7

    .line 95
    :cond_5e
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    .line 97
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 99
    sget v5, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 101
    add-int/lit8 v8, v5, 0x1

    .line 103
    mul-int/lit8 v9, v5, 0x2

    .line 105
    const-wide/16 v10, 0x1e

    .line 107
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 109
    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;

    .line 111
    invoke-direct {v13, v0, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;I)V

    .line 114
    new-instance v14, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    .line 116
    const/4 v4, -0x2

    .line 117
    const-string v5, "fe_unzip_pool"

    .line 119
    invoke-direct {v14, v0, v4, v5}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    .line 122
    new-instance v15, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    .line 124
    invoke-direct {v15, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    .line 127
    move-object v7, v3

    .line 128
    invoke-direct/range {v7 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 131
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    goto :goto_f7

    .line 135
    :cond_86
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    .line 137
    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 139
    sget v6, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 141
    add-int/lit8 v7, v6, -0x4

    .line 143
    add-int/lit8 v8, v6, 0x1

    .line 145
    const-wide/16 v9, 0x0

    .line 147
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 149
    new-instance v12, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;

    .line 151
    invoke-direct {v12, v0, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;I)V

    .line 154
    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    .line 156
    const-string v4, "fe_copy_pool"

    .line 158
    invoke-direct {v13, v0, v3, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    .line 161
    new-instance v14, Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;

    .line 163
    invoke-direct {v14, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    .line 166
    move-object v6, v15

    .line 167
    invoke-direct/range {v6 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 170
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    goto :goto_f7

    .line 174
    :cond_ad
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    .line 176
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 178
    const/4 v6, 0x1

    .line 179
    const/4 v7, 0x1

    .line 180
    const-wide/16 v8, 0x0

    .line 182
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 184
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 186
    invoke-direct {v11, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 189
    new-instance v12, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    .line 191
    const/4 v4, 0x0

    .line 192
    const-string v5, "fe_single_pool"

    .line 194
    invoke-direct {v12, v0, v4, v5}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    .line 197
    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    .line 199
    invoke-direct {v13, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    .line 202
    move-object v5, v3

    .line 203
    invoke-direct/range {v5 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 206
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    goto :goto_f7

    .line 210
    :cond_d1
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    .line 212
    new-instance v15, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 214
    sget v6, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 216
    add-int/lit8 v7, v6, 0x1

    .line 218
    add-int/lit8 v8, v6, 0x1

    .line 220
    const-wide/16 v9, 0x0

    .line 222
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 224
    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 226
    invoke-direct {v12, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 229
    new-instance v13, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;

    .line 231
    const-string v4, "fe_cpu_pool"

    .line 233
    invoke-direct {v13, v0, v3, v4}, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V

    .line 236
    new-instance v14, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;

    .line 238
    invoke-direct {v14, v0}, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;-><init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V

    .line 241
    move-object v6, v15

    .line 242
    invoke-direct/range {v6 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 245
    invoke-virtual {v2, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_f7
    iget-object v2, v0, Lcom/android/fileexplorer/util/ThreadPoolManager;->mPoolMap:Ljava/util/HashMap;

    .line 250
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 256
    return-object v1
.end method
