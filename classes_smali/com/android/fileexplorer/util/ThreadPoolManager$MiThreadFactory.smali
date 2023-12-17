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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/ThreadPoolManager;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->this$0:Lcom/android/fileexplorer/util/ThreadPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->processPriority:I

    iput-object p3, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->threadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->threadName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/fileexplorer/util/ThreadPoolManager$MiThreadFactory;->processPriority:I

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v0
.end method
