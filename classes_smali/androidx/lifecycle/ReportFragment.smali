.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$b;,
        Landroidx/lifecycle/ReportFragment$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Landroidx/lifecycle/ReportFragment$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 1
    instance-of v0, p0, Landroidx/lifecycle/o;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    check-cast p0, Landroidx/lifecycle/o;

    .line 7
    invoke-interface {p0}, Landroidx/lifecycle/o;->getLifecycle()Landroidx/lifecycle/n;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 14
    return-void

    .line 15
    :cond_e
    instance-of v0, p0, Landroidx/lifecycle/m;

    .line 17
    if-eqz v0, :cond_21

    .line 19
    check-cast p0, Landroidx/lifecycle/m;

    .line 21
    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 24
    move-result-object p0

    .line 25
    instance-of v0, p0, Landroidx/lifecycle/n;

    .line 27
    if-eqz v0, :cond_21

    .line 29
    check-cast p0, Landroidx/lifecycle/n;

    .line 31
    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 34
    :cond_21
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment$b;->registerIn(Landroid/app/Activity;)V

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 13
    move-result-object p0

    .line 14
    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_28

    .line 22
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Landroidx/lifecycle/ReportFragment;

    .line 28
    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 38
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 41
    :cond_28
    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ge v0, v1, :cond_d

    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 14
    :cond_d
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    invoke-virtual {p0, p1}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 4
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    .line 12
    return-void
.end method

.method public final onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 4
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    check-cast v0, Landroidx/lifecycle/t$b;

    .line 10
    iget-object v0, v0, Landroidx/lifecycle/t$b;->a:Landroidx/lifecycle/t;

    .line 12
    invoke-virtual {v0}, Landroidx/lifecycle/t;->a()V

    .line 15
    :cond_e
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 20
    return-void
.end method

.method public final onStart()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    .line 6
    if-eqz v0, :cond_21

    .line 8
    check-cast v0, Landroidx/lifecycle/t$b;

    .line 10
    iget-object v0, v0, Landroidx/lifecycle/t$b;->a:Landroidx/lifecycle/t;

    .line 12
    iget v1, v0, Landroidx/lifecycle/t;->a:I

    .line 14
    const/4 v2, 0x1

    .line 15
    add-int/2addr v1, v2

    .line 16
    iput v1, v0, Landroidx/lifecycle/t;->a:I

    .line 18
    if-ne v1, v2, :cond_21

    .line 20
    iget-boolean v1, v0, Landroidx/lifecycle/t;->d:Z

    .line 22
    if-eqz v1, :cond_21

    .line 24
    iget-object v1, v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    .line 26
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 28
    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Landroidx/lifecycle/t;->d:Z

    .line 34
    :cond_21
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 36
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 39
    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 4
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 9
    return-void
.end method
