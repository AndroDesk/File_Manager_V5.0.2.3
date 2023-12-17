.class public final Landroidx/core/app/JobIntentService$e;
.super Landroid/app/job/JobServiceEngine;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$e$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/core/app/JobIntentService;

.field public final b:Ljava/lang/Object;

.field public c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/core/app/JobIntentService$e;->b:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Landroidx/core/app/JobIntentService$e;->a:Landroidx/core/app/JobIntentService;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/app/JobIntentService$e$a;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService$e;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/core/app/JobIntentService$e;->c:Landroid/app/job/JobParameters;

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_a

    .line 9
    monitor-exit v0

    .line 10
    return-object v2

    .line 11
    :cond_a
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    .line 14
    move-result-object v1

    .line 15
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_25

    .line 16
    if-eqz v1, :cond_24

    .line 18
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Landroidx/core/app/JobIntentService$e;->a:Landroidx/core/app/JobIntentService;

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 31
    new-instance v0, Landroidx/core/app/JobIntentService$e$a;

    .line 33
    invoke-direct {v0, p0, v1}, Landroidx/core/app/JobIntentService$e$a;-><init>(Landroidx/core/app/JobIntentService$e;Landroid/app/job/JobWorkItem;)V

    .line 36
    return-object v0

    .line 37
    :cond_24
    return-object v2

    .line 38
    :catchall_25
    move-exception v1

    .line 39
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    .line 40
    throw v1
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/app/JobIntentService$e;->c:Landroid/app/job/JobParameters;

    .line 3
    iget-object p1, p0, Landroidx/core/app/JobIntentService$e;->a:Landroidx/core/app/JobIntentService;

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/core/app/JobIntentService;->a(Z)V

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/core/app/JobIntentService$e;->a:Landroidx/core/app/JobIntentService;

    .line 3
    iget-object p1, p1, Landroidx/core/app/JobIntentService;->c:Landroidx/core/app/JobIntentService$a;

    .line 5
    if-eqz p1, :cond_a

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 11
    :cond_a
    const/4 p1, 0x1

    .line 12
    iget-object v0, p0, Landroidx/core/app/JobIntentService$e;->b:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_f
    iput-object v1, p0, Landroidx/core/app/JobIntentService$e;->c:Landroid/app/job/JobParameters;

    .line 18
    monitor-exit v0

    .line 19
    return p1

    .line 20
    :catchall_13
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    .line 22
    throw p1
.end method
