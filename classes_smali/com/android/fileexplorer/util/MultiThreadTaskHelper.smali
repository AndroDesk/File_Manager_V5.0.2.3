.class public Lcom/android/fileexplorer/util/MultiThreadTaskHelper;
.super Ljava/lang/Object;
.source "MultiThreadTaskHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiThreadTaskHelper"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPauseLock:Ljava/lang/Object;

.field private mStartTime:J

.field private mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mStartTime:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->finishTaskAndCheck()V

    return-void
.end method

.method private finishTaskAndCheck()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_45

    const-string v0, "MultiThreadTaskHelper"

    const-string v1, "finishTaskAndCheck: num = "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3b
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_45

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_42

    throw v1

    :cond_45
    :goto_45
    return-void
.end method

.method private incrementTask()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static sleep(I)V
    .registers 3

    int-to-long v0, p0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_1c

    :catch_5
    move-exception p0

    const-string v0, "sleep error: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiThreadTaskHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->incrementTask()V

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_8

    return-void

    :cond_8
    new-instance v1, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;-><init>(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public finishIteratorAndWait()V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_e
    :try_start_e
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4d

    if-eq v1, v2, :cond_4b

    :try_start_1c
    const-string v1, "MultiThreadTaskHelper"

    const-string v2, "finishIterator wait"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const-string v1, "MultiThreadTaskHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishIterator spendTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_45} :catch_46
    .catchall {:try_start_1c .. :try_end_45} :catchall_4d

    goto :goto_e

    :catch_46
    move-exception v1

    :try_start_47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public reset(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public resetRecord()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->sleep(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
