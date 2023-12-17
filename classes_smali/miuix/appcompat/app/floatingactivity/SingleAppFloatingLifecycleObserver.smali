.class public Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;
.super Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;
.source "SingleAppFloatingLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 4
    return-void
.end method

.method public static synthetic e(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->lambda$executeCloseExit$0(Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private execEnterNotInFloatingWindowMode(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 8
    move-result v1

    .line 9
    if-ltz v1, :cond_19

    .line 11
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_19

    .line 17
    if-eqz v0, :cond_19

    .line 19
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 26
    :cond_19
    return-void
.end method

.method private executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1c

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1c

    .line 20
    new-instance v1, Landroidx/emoji2/text/g;

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/emoji2/text/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_1c
    return-void
.end method

.method private synthetic lambda$executeCloseExit$0(Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 7

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1e

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 18
    new-instance v3, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;

    .line 20
    invoke-direct {v3, p0, p2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;-><init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 23
    aput-object v3, v2, v0

    .line 25
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 28
    invoke-static {p1, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseExitAnimation(Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V

    .line 31
    :cond_1e
    return-void
.end method

.method private reenterTransition(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2d

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityList(I)Ljava/util/ArrayList;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_2d

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v2

    .line 27
    if-ge v0, v2, :cond_2d

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 35
    if-eqz v0, :cond_2d

    .line 37
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2d

    .line 43
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 46
    :cond_2d
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_38

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivity(Ljava/lang/String;I)Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_38

    .line 21
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_35

    .line 27
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2d

    .line 33
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->isActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)Z

    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_38

    .line 39
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 42
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->singleAppFloatingActivityEnter(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 45
    goto :goto_38

    .line 46
    :cond_2d
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-static {v1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->execEnterNotInFloatingWindowMode(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->remove(Ljava/lang/String;I)V

    .line 18
    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_26

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivity(Ljava/lang/String;I)Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_26

    .line 21
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_26

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_23

    .line 33
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    .line 36
    :cond_23
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->reenterTransition(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 39
    :cond_26
    return-void
.end method
