.class public final Landroidx/lifecycle/u$a;
.super Landroidx/lifecycle/d;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/u;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/lifecycle/u;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    .line 3
    iget-object p1, p1, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 5
    invoke-virtual {p1}, Landroidx/lifecycle/t;->a()V

    .line 8
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    .line 3
    iget-object p1, p1, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 5
    iget v0, p1, Landroidx/lifecycle/t;->a:I

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p1, Landroidx/lifecycle/t;->a:I

    .line 11
    if-ne v0, v1, :cond_1a

    .line 13
    iget-boolean v0, p1, Landroidx/lifecycle/t;->d:Z

    .line 15
    if-eqz v0, :cond_1a

    .line 17
    iget-object v0, p1, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 19
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, Landroidx/lifecycle/t;->d:Z

    .line 27
    :cond_1a
    return-void
.end method
