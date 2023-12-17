.class public final Landroidx/lifecycle/ProcessLifecycleInitializer;
.super Ljava/lang/Object;
.source "ProcessLifecycleInitializer.java"

# interfaces
.implements Ld1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/b<",
        "Landroidx/lifecycle/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {p1}, Ld1/a;->c(Landroid/content/Context;)Ld1/a;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroidx/lifecycle/ProcessLifecycleInitializer;

    .line 7
    iget-object v0, v0, Ld1/a;->b:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_48

    .line 15
    sget-object v0, Landroidx/lifecycle/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_18

    .line 24
    goto :goto_26

    .line 25
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/Application;

    .line 31
    new-instance v1, Landroidx/lifecycle/j$a;

    .line 33
    invoke-direct {v1}, Landroidx/lifecycle/j$a;-><init>()V

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    :goto_26
    sget-object v0, Landroidx/lifecycle/t;->i:Landroidx/lifecycle/t;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v1, Landroid/os/Handler;

    .line 46
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 49
    iput-object v1, v0, Landroidx/lifecycle/t;->e:Landroid/os/Handler;

    .line 51
    iget-object v1, v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 53
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 55
    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/app/Application;

    .line 64
    new-instance v1, Landroidx/lifecycle/u;

    .line 66
    invoke-direct {v1, v0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/t;)V

    .line 69
    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 72
    return-object v0

    .line 73
    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    const-string v0, "ProcessLifecycleInitializer cannot be initialized lazily. \nPlease ensure that you have: \n<meta-data\n    android:name=\'androidx.lifecycle.ProcessLifecycleInitializer\' \n    android:value=\'androidx.startup\' /> \nunder InitializationProvider in your AndroidManifest.xml"

    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1
.end method

.method public final dependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ld1/b<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
