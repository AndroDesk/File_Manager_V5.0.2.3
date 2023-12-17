.class public Lcom/miui/maml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextVariables:Lcom/miui/maml/data/ContextVariables;

.field public final mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mObjectFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final mResourceManager:Lcom/miui/maml/ResourceManager;

.field public final mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V
    .registers 4

    .line 2
    new-instance v0, Lcom/miui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lcom/miui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Lcom/miui/maml/elements/ScreenElementFactory;)V
    .registers 5

    .line 3
    new-instance v0, Lcom/miui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lcom/miui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V
    .registers 5

    .line 4
    new-instance v0, Lcom/miui/maml/data/Variables;

    invoke-direct {v0}, Lcom/miui/maml/data/Variables;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;Lcom/miui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;Lcom/miui/maml/data/Variables;)V
    .registers 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->initContextIfNeed(Landroid/content/Context;)V

    if-eqz v0, :cond_d

    move-object p1, v0

    .line 8
    :cond_d
    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 10
    iput-object p3, p0, Lcom/miui/maml/ScreenContext;->mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 12
    iput-object p4, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    new-instance p1, Lcom/miui/maml/data/ContextVariables;

    invoke-direct {p1}, Lcom/miui/maml/data/ContextVariables;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public final declared-synchronized getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/maml/ObjectFactory;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 5
    if-nez v1, :cond_7

    .line 7
    goto :goto_e

    .line 8
    :cond_7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/miui/maml/ObjectFactory;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_d} :catch_13
    .catchall {:try_start_2 .. :try_end_d} :catchall_10

    .line 14
    move-object v0, p1

    .line 15
    :goto_e
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1

    .line 20
    :catch_13
    monitor-exit p0

    .line 21
    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final declared-synchronized registerObjectFactory(Ljava/lang/String;Lcom/miui/maml/ObjectFactory;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    if-nez p2, :cond_c

    .line 4
    :try_start_3
    iget-object p2, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 6
    if-eqz p2, :cond_a

    .line 8
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_56

    .line 11
    :cond_a
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_c
    :try_start_c
    invoke-virtual {p2}, Lcom/miui/maml/ObjectFactory;->getName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3f

    .line 23
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 25
    if-nez v0, :cond_21

    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/miui/maml/ObjectFactory;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_56

    .line 42
    move-object v1, v0

    .line 43
    :goto_2a
    if-eqz v1, :cond_35

    .line 45
    if-ne v1, p2, :cond_30

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Lcom/miui/maml/ObjectFactory;->getOld()Lcom/miui/maml/ObjectFactory;

    .line 52
    move-result-object v1

    .line 53
    goto :goto_2a

    .line 54
    :cond_35
    invoke-virtual {p2, v0}, Lcom/miui/maml/ObjectFactory;->setOld(Lcom/miui/maml/ObjectFactory;)V

    .line 57
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 59
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_56

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :cond_3f
    :try_start_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v1, "ObjectFactory name mismatchs "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p2
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_56

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    monitor-exit p0

    .line 89
    throw p1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method
