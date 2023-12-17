.class Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;
.super Ljava/lang/Object;
.source "WorkerThreads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/internal/util/async/WorkerThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadWrapper"
.end annotation


# instance fields
.field public refCount:I

.field public final thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    .line 9
    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object v0, p0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    return-void
.end method
