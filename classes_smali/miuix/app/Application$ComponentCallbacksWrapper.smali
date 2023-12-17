.class Lmiuix/app/Application$ComponentCallbacksWrapper;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentCallbacksWrapper"
.end annotation


# instance fields
.field private mComponentSubCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static synthetic a(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V
    .registers 2

    invoke-static {p0, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private forAllComponentCallbacks(Ll0/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/ComponentCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_26

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    goto :goto_26

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    new-array v1, v0, [Landroid/content/ComponentCallbacks;

    .line 21
    iget-object v2, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_28

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_1b
    if-ge v2, v0, :cond_25

    .line 30
    aget-object v3, v1, v2

    .line 32
    invoke-interface {p1, v3}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_1b

    .line 38
    :cond_25
    return-void

    .line 39
    :cond_26
    :goto_26
    :try_start_26
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    .line 43
    throw p1
.end method

.method private static synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/app/a;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/app/a;-><init>(Landroid/content/res/Configuration;)V

    .line 6
    invoke-direct {p0, v0}, Lmiuix/app/Application$ComponentCallbacksWrapper;->forAllComponentCallbacks(Ll0/a;)V

    .line 9
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/core/content/b;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroidx/core/content/b;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/app/Application$ComponentCallbacksWrapper;->forAllComponentCallbacks(Ll0/a;)V

    .line 10
    return-void
.end method

.method public registerCallBacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public unregisterCallBacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_10
    :goto_10
    return-void
.end method
