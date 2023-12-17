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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mStartTime:J

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->finishTaskAndCheck()V

    .line 4
    return-void
.end method

.method private finishTaskAndCheck()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_45

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    move-result v1

    .line 31
    if-ne v0, v1, :cond_45

    .line 33
    const-string v0, "MultiThreadTaskHelper"

    .line 35
    const-string v1, "finishTaskAndCheck: num = "

    .line 37
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    .line 59
    monitor-enter v0

    .line 60
    :try_start_3b
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v0

    .line 66
    goto :goto_45

    .line 67
    :catchall_42
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_42

    .line 69
    throw v1

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method private incrementTask()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    return-void
.end method

.method public static sleep(I)V
    .registers 3

    .line 1
    int-to-long v0, p0

    .line 2
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 5
    goto :goto_1c

    .line 6
    :catch_5
    move-exception p0

    .line 7
    const-string v0, "sleep error: "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string v0, "MultiThreadTaskHelper"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_1c
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->incrementTask()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v1, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;

    .line 11
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;-><init>(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;Ljava/lang/Runnable;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 17
    return-void
.end method

.method public finishIteratorAndWait()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :goto_e
    :try_start_e
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mTaskNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 26
    move-result v2
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4d

    .line 27
    if-eq v1, v2, :cond_4b

    .line 29
    :try_start_1c
    const-string v1, "MultiThreadTaskHelper"

    .line 31
    const-string v2, "finishIterator wait"

    .line 33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mPauseLock:Ljava/lang/Object;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 41
    const-string v1, "MultiThreadTaskHelper"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v3, "finishIterator spendTime: "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    move-result-wide v3

    .line 57
    iget-wide v5, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mStartTime:J

    .line 59
    sub-long/2addr v3, v5

    .line 60
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_45} :catch_46
    .catchall {:try_start_1c .. :try_end_45} :catchall_4d

    .line 70
    goto :goto_e

    .line 71
    :catch_46
    move-exception v1

    .line 72
    :try_start_47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    goto :goto_e

    .line 76
    :cond_4b
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_4d
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4d

    .line 80
    throw v1
.end method

.method public reset(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iput-object p1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 6
    return-void
.end method

.method public resetRecord()V
    .registers 3

    .line 1
    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->sleep(I)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->mFinishIteratorAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    return-void
.end method
