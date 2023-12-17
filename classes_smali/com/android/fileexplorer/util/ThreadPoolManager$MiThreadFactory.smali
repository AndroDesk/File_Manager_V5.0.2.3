.class Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiThreadFactory"
.end annotation


# instance fields
.field public processPriority:I

.field public final synthetic this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;

.field public threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->processPriority:I

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->threadName:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->threadName:Ljava/lang/String;

    .line 5
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    iget p1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->processPriority:I

    .line 10
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 13
    return-object v0
.end method
