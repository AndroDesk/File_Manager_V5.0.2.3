.class public Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;
.super Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;
.source "MultiAppFloatingLifecycleObserver.java"


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private execEnterNotInFloatingWindowMode(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_f

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_f

    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v2, v1

    .line 17
    :goto_10
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_40

    .line 23
    if-eqz v2, :cond_33

    .line 25
    if-nez v0, :cond_33

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v3, v0, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(ILjava/lang/String;)V

    .line 38
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2f

    .line 44
    invoke-static {p1, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 47
    goto :goto_40

    .line 48
    :cond_2f
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->execFloatingWindowEnterAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 51
    goto :goto_40

    .line 52
    :cond_33
    if-eqz v2, :cond_40

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v3, v0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(ILjava/lang/String;)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method private executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_18

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_18

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;

    .line 19
    invoke-direct {v1, p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;Landroid/view/View;Landroid/view/View;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_18
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_27

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivity(ILjava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_27

    .line 21
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;

    .line 31
    invoke-direct {v4, p0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 34
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->postEnterAnimationTask(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 37
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->execEnterNotInFloatingWindowMode(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 40
    :cond_27
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1f

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->remove(ILjava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getCurrentPageCount(I)I

    .line 25
    move-result v1

    .line 26
    if-gtz v1, :cond_1f

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    .line 32
    :cond_1f
    return-void
.end method

.method public onPause()V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->updateResumeState(ILjava/lang/String;Z)V

    .line 19
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 6

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_45

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivity(ILjava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_45

    .line 21
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->updateResumeState(ILjava/lang/String;Z)V

    .line 33
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->checkBg(ILjava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isAboveActivityFinishing(ILjava/lang/String;)Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_45

    .line 58
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_45

    .line 64
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->executeCloseEnterAnimation()V

    .line 67
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 70
    :cond_45
    return-void
.end method
