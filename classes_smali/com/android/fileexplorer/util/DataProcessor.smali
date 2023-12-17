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
.field private static final DEFAULT_GROUPING_NUM:I


# instance fields
.field private filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

.field private isRootPath:Z

.field private final mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c62

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/util/DataProcessor;->DEFAULT_GROUPING_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getNewExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/util/DataProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/util/DataProcessor;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/util/DataProcessor;->isPrivateFolder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/util/DataProcessor;)Lcom/android/fileexplorer/util/FileNameExtFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/util/DataProcessor;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    return-object p0
.end method

.method private isPrivateFolder(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "FileExplorer"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/fileexplorer/util/DataProcessor;->isRootPath:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

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

    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/fileexplorer/util/ThreadPoolManager;->CPU_COUNT:I

    mul-int/lit16 v2, v1, 0x1f4

    const/16 v3, 0x1f4

    if-ge v0, v2, :cond_2f

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_27

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v3

    goto :goto_40

    :cond_27
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_2f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_38

    move v0, v1

    goto :goto_3a

    :cond_38
    add-int/lit8 v0, v1, 0x1

    :goto_3a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v3, v2, v1

    :goto_40
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v0, 0x0

    :goto_46
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_70

    iget-object v2, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v11, v0, v3

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    move-object v4, v10

    move-object v5, p0

    move-object v7, p1

    move-object v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/fileexplorer/util/DataProcessor$BuildFileInfoTask;-><init>(Lcom/android/fileexplorer/util/DataProcessor;Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CountDownLatch;I)V

    invoke-virtual {v2, v10}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move v0, v11

    goto :goto_46

    :cond_70
    :try_start_70
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_8b

    :catch_74
    move-exception p1

    const-string p2, "countDownLatch error:"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataProcessor"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8b
    return-void
.end method

.method public setFilters(Lcom/android/fileexplorer/util/FileNameExtFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/DataProcessor;->filters:Lcom/android/fileexplorer/util/FileNameExtFilter;

    return-void
.end method

.method public setRootPath(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/util/DataProcessor;->isRootPath:Z

    return-void
.end method

.method public shutdown()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/util/DataProcessor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void
.end method
