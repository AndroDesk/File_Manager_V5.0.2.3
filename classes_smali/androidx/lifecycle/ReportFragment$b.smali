.class public final Landroidx/lifecycle/ReportFragment$b;
.super Ljava/lang/Object;
.source "ReportFragment.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerIn(Landroid/app/Activity;)V
    .registers 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ReportFragment$b;

    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/ReportFragment$b;-><init>()V

    .line 6
    invoke-static {p0, v0}, Landroidx/appcompat/widget/a0;->n(Landroid/app/Activity;Landroidx/lifecycle/ReportFragment$b;)V

    .line 9
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-static {p1, p2}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    invoke-static {p1, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
