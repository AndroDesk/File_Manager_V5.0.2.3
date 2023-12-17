.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$e;,
        Landroidx/core/app/JobIntentService$f;,
        Landroidx/core/app/JobIntentService$c;,
        Landroidx/core/app/JobIntentService$b;,
        Landroidx/core/app/JobIntentService$a;,
        Landroidx/core/app/JobIntentService$d;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/JobIntentService$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroidx/core/app/JobIntentService$e;

.field public b:Landroidx/core/app/JobIntentService$f;

.field public c:Landroidx/core/app/JobIntentService$a;

.field public d:Z

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/JobIntentService$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Landroidx/core/app/JobIntentService;->f:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->d:Z

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v1, 0x1a

    .line 11
    if-lt v0, v1, :cond_10

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 24
    :goto_17
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    .line 3
    if-nez v0, :cond_1e

    .line 5
    new-instance v0, Landroidx/core/app/JobIntentService$a;

    .line 7
    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$a;-><init>(Landroidx/core/app/JobIntentService;)V

    .line 10
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    .line 12
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$f;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$f;->b()V

    .line 21
    :cond_14
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    .line 23
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v1, v1, [Ljava/lang/Void;

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    :cond_1e
    return-void
.end method

.method public abstract b()V
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    .line 9
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 11
    if-eqz v1, :cond_17

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_17

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Landroidx/core/app/JobIntentService;->a(Z)V

    .line 23
    goto :goto_20

    .line 24
    :cond_17
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->d:Z

    .line 26
    if-nez v1, :cond_20

    .line 28
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$f;

    .line 30
    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$f;->a()V

    .line 33
    :cond_20
    :goto_20
    monitor-exit v0

    .line 34
    goto :goto_25

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    .line 37
    throw v1

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$e;

    .line 3
    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public final onCreate()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x1a

    .line 9
    if-lt v0, v2, :cond_14

    .line 11
    new-instance v0, Landroidx/core/app/JobIntentService$e;

    .line 13
    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$e;-><init>(Landroidx/core/app/JobIntentService;)V

    .line 16
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$e;

    .line 18
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$f;

    .line 20
    goto :goto_3e

    .line 21
    :cond_14
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$e;

    .line 23
    new-instance v1, Landroid/content/ComponentName;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    sget-object v3, Landroidx/core/app/JobIntentService;->f:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroidx/core/app/JobIntentService$f;

    .line 40
    if-nez v4, :cond_3c

    .line 42
    if-ge v0, v2, :cond_34

    .line 44
    new-instance v4, Landroidx/core/app/JobIntentService$b;

    .line 46
    invoke-direct {v4, p0, v1}, Landroidx/core/app/JobIntentService$b;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 49
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_3c

    .line 53
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    const-string v1, "Can\'t be here without a job id"

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
    :cond_3c
    :goto_3c
    iput-object v4, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$f;

    .line 63
    :goto_3e
    return-void
.end method

.method public final onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 6
    if-eqz v0, :cond_15

    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_9
    iput-boolean v1, p0, Landroidx/core/app/JobIntentService;->d:Z

    .line 12
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$f;

    .line 14
    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$f;->a()V

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_15

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    .line 21
    throw v1

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 1
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 3
    if-eqz p2, :cond_28

    .line 5
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->b:Landroidx/core/app/JobIntentService$f;

    .line 7
    invoke-virtual {p2}, Landroidx/core/app/JobIntentService$f;->c()V

    .line 10
    iget-object p2, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 12
    monitor-enter p2

    .line 13
    :try_start_c
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Landroidx/core/app/JobIntentService$c;

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance p1, Landroid/content/Intent;

    .line 22
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 25
    :goto_18
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/JobIntentService$c;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService;->a(Z)V

    .line 35
    monitor-exit p2

    .line 36
    const/4 p1, 0x3

    .line 37
    return p1

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    .line 40
    throw p1

    .line 41
    :cond_28
    const/4 p1, 0x2

    .line 42
    return p1
.end method
