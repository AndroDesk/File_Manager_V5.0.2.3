.class public Lcom/android/fileexplorer/util/CustomThreadPool;
.super Ljava/lang/Object;
.source "CustomThreadPool.java"


# static fields
.field private static sManager:Lcom/android/fileexplorer/util/ThreadPoolManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/fileexplorer/util/CustomThreadPool;->sManager:Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncWork(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public static asyncWork(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_5
    return-void
.end method
