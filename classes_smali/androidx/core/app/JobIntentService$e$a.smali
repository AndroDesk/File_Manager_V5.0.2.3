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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/JobIntentService$e;Landroid/app/job/JobWorkItem;)V
    .registers 3

    iput-object p1, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    iget-object v0, v0, Landroidx/core/app/JobIntentService$e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Landroidx/core/app/JobIntentService$e$a;->b:Landroidx/core/app/JobIntentService$e;

    iget-object v1, v1, Landroidx/core/app/JobIntentService$e;->c:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_10

    iget-object v2, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    invoke-static {v1, v2}, Landroidx/appcompat/widget/x;->l(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/JobIntentService$e$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
