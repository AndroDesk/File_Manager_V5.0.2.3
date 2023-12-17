.class public final Landroidx/core/app/JobIntentService$c;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:I

.field public final synthetic c:Landroidx/core/app/JobIntentService;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/core/app/JobIntentService$c;->c:Landroidx/core/app/JobIntentService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/core/app/JobIntentService$c;->a:Landroid/content/Intent;

    .line 8
    iput p3, p0, Landroidx/core/app/JobIntentService$c;->b:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService$c;->c:Landroidx/core/app/JobIntentService;

    .line 3
    iget v1, p0, Landroidx/core/app/JobIntentService$c;->b:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    .line 8
    return-void
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/JobIntentService$c;->a:Landroid/content/Intent;

    .line 3
    return-object v0
.end method
