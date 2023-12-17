.class public Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/LifecycleListener;
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$ClearTarget;,
        Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/bumptech/glide/manager/LifecycleListener;",
        "Lcom/bumptech/glide/ModelTypes<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DECODE_TYPE_BITMAP:Lcom/bumptech/glide/request/RequestOptions;

.field private static final DECODE_TYPE_GIF:Lcom/bumptech/glide/request/RequestOptions;

.field private static final DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field private final addSelfToLifecycle:Ljava/lang/Runnable;

.field private final connectivityMonitor:Lcom/bumptech/glide/manager/ConnectivityMonitor;

.field public final context:Landroid/content/Context;

.field private final defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final glide:Lcom/bumptech/glide/Glide;

.field public final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private final mainHandler:Landroid/os/Handler;

.field private pauseAllRequestsOnTrimMemoryModerate:Z

.field private requestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

.field private final targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

.field private final treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 13
    sput-object v0, Lcom/bumptech/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/bumptech/glide/request/RequestOptions;

    .line 15
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 17
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 27
    sput-object v0, Lcom/bumptech/glide/RequestManager;->DECODE_TYPE_GIF:Lcom/bumptech/glide/request/RequestOptions;

    .line 29
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 31
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    .line 37
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 50
    sput-object v0, Lcom/bumptech/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .registers 12

    .line 1
    new-instance v4, Lcom/bumptech/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getConnectivityMonitorFactory()Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V
    .registers 10

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/bumptech/glide/manager/TargetTracker;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/TargetTracker;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 6
    new-instance v0, Lcom/bumptech/glide/RequestManager$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;)V

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bumptech/glide/RequestManager;->mainHandler:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 10
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 12
    iput-object p6, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {p6, p0, p4}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/RequestTracker;)V

    .line 14
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->connectivityMonitor:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    .line 15
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result p4

    if-eqz p4, :cond_3f

    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 17
    :cond_3f
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 18
    :goto_42
    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 19
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/GlideContext;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/GlideContext;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    .line 22
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/Glide;->registerRequestManager(Lcom/bumptech/glide/RequestManager;)V

    return-void
.end method

.method private untrackOrDelegate(Lcom/bumptech/glide/request/target/Target;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->untrack(Lcom/bumptech/glide/request/target/Target;)Z

    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    .line 8
    move-result-object v1

    .line 9
    if-nez v0, :cond_1b

    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 13
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->removeFromManagers(Lcom/bumptech/glide/request/target/Target;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1b

    .line 19
    if-eqz v1, :cond_1b

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 25
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 28
    :cond_1b
    return-void
.end method

.method private declared-synchronized updateRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 4
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method


# virtual methods
.method public addDefaultRequestListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestManager;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/RequestManager;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public declared-synchronized applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestManager;->updateRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 5
    monitor-exit p0

    .line 6
    return-object p0

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/RequestBuilder;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    .line 7
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method public asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/bumptech/glide/request/RequestOptions;

    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public asFile()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/bumptech/glide/request/RequestOptions;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public asGif()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/RequestManager;->DECODE_TYPE_GIF:Lcom/bumptech/glide/request/RequestOptions;

    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public clear(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/RequestManager$ClearTarget;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/RequestManager$ClearTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public clear(Lcom/bumptech/glide/request/target/Target;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestManager;->untrackOrDelegate(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getDefaultRequestListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    return-object v0
.end method

.method public declared-synchronized getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/GlideContext;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public declared-synchronized isPaused()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->isPaused()Z

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/bumptech/glide/RequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->onDestroy()V

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->getAll()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    .line 29
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 35
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->clear()V

    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 40
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->clearRequests()V

    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 45
    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/Lifecycle;->removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    .line 50
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->connectivityMonitor:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    .line 52
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/Lifecycle;->removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->mainHandler:Landroid/os/Handler;

    .line 57
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    .line 64
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/Glide;->unregisterRequestManager(Lcom/bumptech/glide/RequestManager;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    monitor-exit p0

    .line 71
    throw v0
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public declared-synchronized onStart()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->onStart()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public declared-synchronized onStop()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->onStop()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public onTrimMemory(I)V
    .registers 3

    .line 1
    const/16 v0, 0x3c

    .line 3
    if-ne p1, v0, :cond_b

    .line 5
    iget-boolean p1, p0, Lcom/bumptech/glide/RequestManager;->pauseAllRequestsOnTrimMemoryModerate:Z

    .line 7
    if-eqz p1, :cond_b

    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseAllRequestsRecursive()V

    .line 12
    :cond_b
    return-void
.end method

.method public declared-synchronized pauseAllRequests()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->pauseAllRequests()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized pauseAllRequestsRecursive()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseAllRequests()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1e

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/bumptech/glide/RequestManager;

    .line 27
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->pauseAllRequests()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_20

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method

.method public declared-synchronized pauseRequests()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->pauseRequests()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized pauseRequestsRecursive()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1e

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/bumptech/glide/RequestManager;

    .line 27
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_20

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method

.method public declared-synchronized resumeRequests()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->resumeRequests()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public declared-synchronized resumeRequestsRecursive()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 10
    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_21

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/bumptech/glide/RequestManager;

    .line 30
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    .line 33
    goto :goto_11

    .line 34
    :cond_21
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public declared-synchronized setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 5
    monitor-exit p0

    .line 6
    return-object p0

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public setPauseAllRequestsOnTrimMemoryModerate(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/RequestManager;->pauseAllRequestsOnTrimMemoryModerate:Z

    .line 3
    return-void
.end method

.method public declared-synchronized setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "{tracker="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", treeNode="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "}"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public declared-synchronized track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;",
            "Lcom/bumptech/glide/request/Request;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 4
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/TargetTracker;->track(Lcom/bumptech/glide/request/target/Target;)V

    .line 7
    iget-object p1, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 9
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/manager/RequestTracker;->runRequest(Lcom/bumptech/glide/request/Request;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public declared-synchronized untrack(Lcom/bumptech/glide/request/target/Target;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    .line 5
    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_20

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_a

    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 13
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/RequestTracker;->clearAndRemove(Lcom/bumptech/glide/request/Request;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    .line 21
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/TargetTracker;->untrack(Lcom/bumptech/glide/request/target/Target;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_20

    .line 28
    monitor-exit p0

    .line 29
    return v1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    monitor-exit p0

    .line 32
    return p1

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method
