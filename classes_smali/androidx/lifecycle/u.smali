.class public final Landroidx/lifecycle/u;
.super Landroidx/lifecycle/d;
.source "ProcessLifecycleOwner.java"


# instance fields
.field public final synthetic this$0:Landroidx/lifecycle/t;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v0, 0x1d

    .line 5
    if-ge p2, v0, :cond_1a

    .line 7
    sget p2, Landroidx/lifecycle/ReportFragment;->b:I

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 12
    move-result-object p1

    .line 13
    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 15
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/lifecycle/ReportFragment;

    .line 21
    iget-object p2, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 23
    iget-object p2, p2, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/t$b;

    .line 25
    iput-object p2, p1, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    .line 27
    :cond_1a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 3
    iget v0, p1, Landroidx/lifecycle/t;->b:I

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    iput v0, p1, Landroidx/lifecycle/t;->b:I

    .line 9
    if-nez v0, :cond_13

    .line 11
    iget-object v0, p1, Landroidx/lifecycle/t;->e:Landroid/os/Handler;

    .line 13
    iget-object p1, p1, Landroidx/lifecycle/t;->g:Landroidx/lifecycle/t$a;

    .line 15
    const-wide/16 v1, 0x2bc

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    :cond_13
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    new-instance p2, Landroidx/lifecycle/u$a;

    .line 3
    invoke-direct {p2, p0}, Landroidx/lifecycle/u$a;-><init>(Landroidx/lifecycle/u;)V

    .line 6
    invoke-static {p1, p2}, Landroidx/appcompat/widget/a0;->m(Landroid/app/Activity;Landroidx/lifecycle/u$a;)V

    .line 9
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 3
    iget v0, p1, Landroidx/lifecycle/t;->a:I

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    iput v0, p1, Landroidx/lifecycle/t;->a:I

    .line 9
    if-nez v0, :cond_18

    .line 11
    iget-boolean v0, p1, Landroidx/lifecycle/t;->c:Z

    .line 13
    if-eqz v0, :cond_18

    .line 15
    iget-object v0, p1, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 17
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p1, Landroidx/lifecycle/t;->d:Z

    .line 25
    :cond_18
    return-void
.end method
