.class public Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;
.super Ljava/lang/Object;
.source "CacheViewHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheViewHelper"

.field private static volatile sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;


# instance fields
.field private cacheViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile isStop:Z

.field private layouts:[I

.field private loadNum:I

.field private loadSuccess:Z

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private produceNum:I

.field private final service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreen()Z

    move-result v0

    const/16 v1, 0x28

    const/16 v2, 0x19

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadNum:I

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->produceNum:I

    const-string v0, "loadNum:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheViewHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$1;-><init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    return-void

    nop

    :array_4c
    .array-data 4
        0x7f0d00dc
        0x7f0d006c
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadNum:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadSuccess:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->isStop:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->produceNum:I

    return p0
.end method

.method private contains([II)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_e

    aget v2, p1, v1

    if-ne p2, v2, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

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
    sget-object v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    return-object v0
.end method

.method private isSameUIMode(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_2b

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-ne p1, v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    :goto_2b
    return v0
.end method


# virtual methods
.method public getCacheView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    if-eqz v0, :cond_48

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->isSameUIMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_32

    :cond_24
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2d

    return-object v0

    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getCacheView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    invoke-direct {p0, v0, p2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->produce(Ljava/lang/ref/WeakReference;ILandroid/view/ViewGroup;)V

    :cond_3f
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->isStop:Z

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :try_start_12
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_36

    :catch_1c
    move-exception v0

    const-string v1, "InterruptedException: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CacheViewHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    :cond_40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadSuccess:Z

    sput-object v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    return-void
.end method

.method public onDestroy(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public preLoadLayout(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    array-length v0, v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_26

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_26

    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;-><init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Ljava/lang/ref/WeakReference;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public produce(Ljava/lang/ref/WeakReference;ILandroid/view/ViewGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;I",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;-><init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;ILjava/lang/ref/WeakReference;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public with(Landroid/content/Context;)Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
