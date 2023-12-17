.class public Lcom/android/fileexplorer/util/DataProcessor;
.super Ljava/lang/Object;
.source "DataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_GROUPING_NUM:I = 0x1f4


# instance fields
.field private filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

.field private isRootPath:Z

.field private final mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getNewExecutorService()Ljava/util/concurrent/ExecutorService;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 24
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/util/DataProcessor;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/util/DataProcessor;->isPrivateFolder(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/util/DataProcessor;)Lcom/android/fileexplorer/util/FileNameExtFilter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/util/DataProcessor;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 3
    return-object p0
.end method

.method private isPrivateFolder(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "FileExplorer"

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_e

    .line 9
    iget-boolean p1, p0, Lcom/android/fileexplorer/util/DataProcessor;->isRootPath:Z

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method


# virtual methods
.method public partitionTask(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    sget v1, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    .line 21
    mul-int/lit16 v2, v1, 0x1f4

    .line 23
    const/16 v3, 0x1f4

    .line 25
    if-ge v0, v2, :cond_2f

    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v0

    .line 31
    rem-int/2addr v0, v3

    .line 32
    if-nez v0, :cond_27

    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 38
    div-int/2addr v0, v3

    .line 39
    goto :goto_40

    .line 40
    :cond_27
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v0

    .line 44
    div-int/2addr v0, v3

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_40

    .line 48
    :cond_2f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v0

    .line 52
    rem-int/2addr v0, v1

    .line 53
    if-nez v0, :cond_38

    .line 55
    move v0, v1

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    add-int/lit8 v0, v1, 0x1

    .line 59
    :goto_3a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result v2

    .line 63
    div-int v3, v2, v1

    .line 65
    :goto_40
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 67
    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_46
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v2

    .line 75
    if-ge v0, v2, :cond_70

    .line 77
    iget-object v2, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 79
    new-instance v10, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;

    .line 81
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v4

    .line 85
    add-int v11, v0, v3

    .line 87
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result v4

    .line 91
    invoke-virtual {p2, v0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 94
    move-result-object v6

    .line 95
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 100
    move-result v9

    .line 101
    move-object v4, v10

    .line 102
    move-object v5, p0

    .line 103
    move-object v7, p1

    .line 104
    move-object v8, v1

    .line 105
    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;-><init>(Lcom/android/fileexplorer/util/DataProcessor;Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CountDownLatch;I)V

    .line 108
    invoke-virtual {v2, v10}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 111
    move v0, v11

    .line 112
    goto :goto_46

    .line 113
    :cond_70
    :try_start_70
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_74

    .line 116
    goto :goto_8b

    .line 117
    :catch_74
    move-exception p1

    .line 118
    const-string p2, "countDownLatch error:"

    .line 120
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    const-string p2, "DataProcessor"

    .line 137
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_8b
    return-void
.end method

.method public setFilters(Lcom/android/fileexplorer/util/FileNameExtFilter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/DataProcessor;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    .line 3
    return-void
.end method

.method public setRootPath(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/util/DataProcessor;->isRootPath:Z

    .line 3
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 6
    return-void
.end method
