.class Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitedQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/ThreadPoolManager;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$LimitedQueue;->this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 3
    invoke-direct {p0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :catch_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1
.end method
