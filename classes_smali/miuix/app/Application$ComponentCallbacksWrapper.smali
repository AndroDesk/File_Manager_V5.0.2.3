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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mContext:Landroid/content/Context;

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

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_26

    :cond_c
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Landroid/content/ComponentCallbacks;

    iget-object v2, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_28

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_25

    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ll0/a;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_25
    return-void

    :cond_26
    :goto_26
    :try_start_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private static synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    new-instance v0, Lmiuix/app/a;

    invoke-direct {v0, p1}, Lmiuix/app/a;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {p0, v0}, Lmiuix/app/Application$ComponentCallbacksWrapper;->forAllComponentCallbacks(Ll0/a;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 3

    new-instance v0, Landroidx/core/content/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/core/content/b;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/app/Application$ComponentCallbacksWrapper;->forAllComponentCallbacks(Ll0/a;)V

    return-void
.end method

.method public registerCallBacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallBacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper;->mComponentSubCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    :goto_10
    return-void
.end method
