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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    instance-of v0, p0, Landroidx/lifecycle/o;

    if-eqz v0, :cond_e

    check-cast p0, Landroidx/lifecycle/o;

    invoke-interface {p0}, Landroidx/lifecycle/o;->getLifecycle()Landroidx/lifecycle/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void

    :cond_e
    instance-of v0, p0, Landroidx/lifecycle/m;

    if-eqz v0, :cond_21

    check-cast p0, Landroidx/lifecycle/m;

    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/n;

    if-eqz v0, :cond_21

    check-cast p0, Landroidx/lifecycle/n;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_21
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Landroidx/lifecycle/ReportFragment$b;->registerIn(Landroid/app/Activity;)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_28

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroidx/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_28
    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_d
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    return-void
.end method

.method public final onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    if-eqz v0, :cond_e

    check-cast v0, Landroidx/lifecycle/t$b;

    iget-object v0, v0, Landroidx/lifecycle/t$b;->a:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/t;->a()V

    :cond_e
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    if-eqz v0, :cond_21

    check-cast v0, Landroidx/lifecycle/t$b;

    iget-object v0, v0, Landroidx/lifecycle/t$b;->a:Landroidx/lifecycle/t;

    iget v1, v0, Landroidx/lifecycle/t;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/lifecycle/t;->a:I

    if-ne v1, v2, :cond_21

    iget-boolean v1, v0, Landroidx/lifecycle/t;->d:Z

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/lifecycle/t;->d:Z

    :cond_21
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method