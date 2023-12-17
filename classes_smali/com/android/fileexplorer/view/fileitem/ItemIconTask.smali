.class public Lcom/android/fileexplorer/view/fileitem/ItemIconTask;
.super Ljava/lang/Object;
.source "ItemIconTask.java"


# static fields
.field private static final DO_TASK:I = 0x1101

.field private static sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRunList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;-><init>(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;Landroid/os/Looper;)V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Ljava/util/Queue;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/view/fileitem/ItemIconTask;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 26
    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    .line 8
    const/16 v0, 0x1101

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_14

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    :cond_14
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    const-class v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 9
    const/4 v1, 0x0

    .line 10
    sput-object v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    .line 14
    if-eqz v2, :cond_12

    .line 16
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    .line 23
    throw v1
.end method
