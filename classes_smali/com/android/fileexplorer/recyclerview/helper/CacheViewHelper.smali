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
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_4c

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreen()Z

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x28

    .line 18
    const/16 v2, 0x19

    .line 20
    if-eqz v0, :cond_17

    .line 22
    move v0, v1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v2

    .line 25
    :goto_18
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadNum:I

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreen()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v1, v2

    .line 35
    :goto_22
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->produceNum:I

    .line 37
    const-string v0, "loadNum:"

    .line 39
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadNum:I

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const-string v1, "CacheViewHelper"

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$1;

    .line 59
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$1;-><init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)V

    .line 62
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    .line 70
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_4c
    .array-data 4
        0x7f0d00dc
        0x7f0d006c
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)[I
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadNum:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadSuccess:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->isStop:Z

    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->produceNum:I

    .line 3
    return p0
.end method

.method private contains([II)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_e

    .line 6
    aget v2, p1, v1

    .line 8
    if-ne p2, v2, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_2

    .line 15
    :cond_e
    return v0
.end method

.method public static getsInstance()Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 14
    invoke-direct {v1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;-><init>()V

    .line 17
    sput-object v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

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
    sget-object v0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    .line 26
    return-object v0
.end method

.method private isSameUIMode(Landroid/content/Context;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2b

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_c

    .line 12
    goto :goto_2b

    .line 13
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/Context;

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    move-result-object v1

    .line 39
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 41
    if-ne p1, v1, :cond_2b

    .line 43
    const/4 v0, 0x1

    .line 44
    :cond_2b
    :goto_2b
    return v0
.end method


# virtual methods
.method public getCacheView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadSuccess:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_48

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    .line 8
    if-eqz v0, :cond_48

    .line 10
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->isSameUIMode(Landroid/content/Context;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_48

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/List;

    .line 28
    if-eqz v0, :cond_32

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_24

    .line 36
    goto :goto_32

    .line 37
    :cond_24
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/view/View;

    .line 43
    if-eqz v0, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->getCacheView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    .line 53
    invoke-direct {p0, v0, p2}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->contains([II)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3f

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->produce(Ljava/lang/ref/WeakReference;ILandroid/view/ViewGroup;)V

    .line 64
    :cond_3f
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method public onDestroy()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->isStop:Z

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_36

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
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

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CacheViewHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    iput-object v1, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    :cond_40
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->loadSuccess:Z

    .line 12
    sput-object v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->sInstance:Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;

    return-void
.end method

.method public onDestroy(I)V
    .registers 3

    .line 16
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->layouts:[I

    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    .line 9
    if-eqz v0, :cond_26

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    .line 20
    if-eqz v0, :cond_26

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1c

    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    .line 31
    new-instance v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;

    .line 33
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$2;-><init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;Ljava/lang/ref/WeakReference;)V

    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->cacheViews:Ljava/util/HashMap;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    .line 8
    if-eqz v0, :cond_1a

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_1a

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->service:Ljava/util/concurrent/ExecutorService;

    .line 19
    new-instance v1, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;

    .line 21
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper$3;-><init>(Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;ILjava/lang/ref/WeakReference;Landroid/view/ViewGroup;)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method

.method public with(Landroid/content/Context;)Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/recyclerview/helper/CacheViewHelper;->mRef:Ljava/lang/ref/WeakReference;

    .line 8
    return-object p0
.end method
