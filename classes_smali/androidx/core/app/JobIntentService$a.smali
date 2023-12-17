.class public final Landroidx/core/app/JobIntentService$a;
.super Landroid/os/AsyncTask;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/app/JobIntentService;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/app/JobIntentService$a;->a:Landroidx/core/app/JobIntentService;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 3
    :goto_2
    iget-object p1, p0, Landroidx/core/app/JobIntentService$a;->a:Landroidx/core/app/JobIntentService;

    .line 5
    iget-object v0, p1, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/JobIntentService$e;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_e

    .line 10
    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$e;->a()Landroidx/core/app/JobIntentService$e$a;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_26

    .line 15
    :cond_e
    iget-object v0, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_11
    iget-object v2, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v2

    .line 24
    if-lez v2, :cond_24

    .line 26
    iget-object p1, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroidx/core/app/JobIntentService$d;

    .line 35
    monitor-exit v0

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_35

    .line 38
    move-object p1, v1

    .line 39
    :goto_26
    if-eqz p1, :cond_34

    .line 41
    iget-object v0, p0, Landroidx/core/app/JobIntentService$a;->a:Landroidx/core/app/JobIntentService;

    .line 43
    invoke-interface {p1}, Landroidx/core/app/JobIntentService$d;->getIntent()Landroid/content/Intent;

    .line 46
    invoke-virtual {v0}, Landroidx/core/app/JobIntentService;->b()V

    .line 49
    invoke-interface {p1}, Landroidx/core/app/JobIntentService$d;->a()V

    .line 52
    goto :goto_2

    .line 53
    :cond_34
    return-object v1

    .line 54
    :catchall_35
    move-exception p1

    .line 55
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .line 56
    throw p1
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 3
    iget-object p1, p0, Landroidx/core/app/JobIntentService$a;->a:Landroidx/core/app/JobIntentService;

    .line 5
    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->c()V

    .line 8
    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 3
    iget-object p1, p0, Landroidx/core/app/JobIntentService$a;->a:Landroidx/core/app/JobIntentService;

    .line 5
    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->c()V

    .line 8
    return-void
.end method
