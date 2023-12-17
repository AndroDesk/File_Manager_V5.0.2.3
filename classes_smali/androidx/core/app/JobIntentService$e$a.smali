.class public final Landroidx/core/app/JobIntentService$e$a;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/app/job/JobWorkItem;

.field public final synthetic b:Landroidx/core/app/JobIntentService$e;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService$e;Landroid/app/job/JobWorkItem;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    .line 3
    iget-object v0, v0, Landroidx/core/app/JobIntentService$e;->b:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    .line 8
    iget-object v1, v1, Landroidx/core/app/JobIntentService$e;->c:Landroid/app/job/JobParameters;

    .line 10
    if-eqz v1, :cond_10

    .line 12
    iget-object v2, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    .line 14
    invoke-static {v1, v2}, Landroidx/appcompat/widget/x;->l(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 17
    :cond_10
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    .line 21
    throw v1
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
