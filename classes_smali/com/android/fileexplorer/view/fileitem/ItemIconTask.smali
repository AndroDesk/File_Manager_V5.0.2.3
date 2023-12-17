.class public Lcom/android/fileexplorer/view/fileitem/ItemIconTask;
.super Ljava/lang/Object;
.source "ItemIconTask.java"


# static fields
.field private static final DO_TASK:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x93c97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->DO_TASK:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    new-instance v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask$1;-><init>(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/fileitem/ItemIconTask;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/android/fileexplorer/view/fileitem/ItemIconTask;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    invoke-direct {v1}, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1101

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14
    return-void
.end method

.method public destroy()V
    .registers 4

    const-class v0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mRunList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->sTask:Lcom/android/fileexplorer/view/fileitem/ItemIconTask;

    iget-object v2, p0, Lcom/android/fileexplorer/view/fileitem/ItemIconTask;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
