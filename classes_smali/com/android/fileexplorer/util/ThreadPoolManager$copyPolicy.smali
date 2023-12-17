.class Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "copyPolicy"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$copyPolicy;->this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    :try_start_6
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_d} :catch_d

    .line 14
    :catch_d
    :cond_d
    return-void
.end method
