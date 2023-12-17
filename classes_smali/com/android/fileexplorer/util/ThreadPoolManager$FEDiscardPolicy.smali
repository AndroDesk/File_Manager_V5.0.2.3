.class Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;
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
    name = "FEDiscardPolicy"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/ThreadPoolManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$FEDiscardPolicy;->this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2b

    .line 7
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Runnable;

    .line 17
    if-eqz v0, :cond_28

    .line 19
    const-string v1, "discard task = "

    .line 21
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "ThreadPoolManager"

    .line 38
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_28
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 44
    :cond_2b
    return-void
.end method
