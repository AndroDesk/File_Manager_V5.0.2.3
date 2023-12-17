.class public final Landroidx/lifecycle/u;
.super Landroidx/lifecycle/d;
.source "ProcessLifecycleOwner.java"


# instance fields
.field public final synthetic this$0:Landroidx/lifecycle/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/t;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_1a

    sget p2, Landroidx/lifecycle/ReportFragment;->b:I

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ReportFragment;

    iget-object p2, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    iget-object p2, p2, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/t$b;

    iput-object p2, p1, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    :cond_1a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    iget-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    iget v0, p1, Landroidx/lifecycle/t;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/t;->b:I

    if-nez v0, :cond_13

    iget-object v0, p1, Landroidx/lifecycle/t;->e:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/t;->g:Landroidx/lifecycle/t$a;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    new-instance p2, Landroidx/lifecycle/u$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/u$a;-><init>(Landroidx/lifecycle/u;)V

    invoke-static {p1, p2}, Landroidx/appcompat/widget/a0;->m(Landroid/app/Activity;Landroidx/lifecycle/u$a;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    iget-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    iget v0, p1, Landroidx/lifecycle/t;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/t;->a:I

    if-nez v0, :cond_18

    iget-boolean v0, p1, Landroidx/lifecycle/t;->c:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroidx/lifecycle/t;->f:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/lifecycle/t;->d:Z

    :cond_18
    return-void
.end method
