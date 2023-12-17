.class public Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Ld0/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentActivity$a;
    }
.end annotation


# static fields
.field public static final LIFECYCLE_TAG:Ljava/lang/String; = "android:support:lifecycle"


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

.field public final mFragments:Landroidx/fragment/app/o;

.field public mResumed:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentActivity$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 3
    new-instance v1, Landroidx/fragment/app/o;

    invoke-direct {v1, v0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/q;)V

    .line 4
    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 5
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    .line 9
    new-instance p1, Landroidx/fragment/app/FragmentActivity$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentActivity$a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 10
    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p1}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/q;)V

    .line 11
    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 12
    new-instance p1, Landroidx/lifecycle/n;

    invoke-direct {p1, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->init()V

    return-void
.end method

.method public static synthetic c(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->lambda$init$2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d(Landroidx/fragment/app/FragmentActivity;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->lambda$init$1(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic e(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;->lambda$init$3(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic f(Landroidx/fragment/app/FragmentActivity;)Landroid/os/Bundle;
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;->lambda$init$0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lc1/c;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/activity/c;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Landroidx/activity/c;-><init>(Ljava/lang/Object;I)V

    .line 11
    const-string v3, "android:support:lifecycle"

    .line 13
    invoke-virtual {v0, v3, v1}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 16
    new-instance v0, Landroidx/fragment/app/l;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/l;-><init>(Ljava/lang/Object;I)V

    .line 22
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Ll0/a;)V

    .line 25
    new-instance v0, Landroidx/fragment/app/l;

    .line 27
    invoke-direct {v0, p0, v2}, Landroidx/fragment/app/l;-><init>(Ljava/lang/Object;I)V

    .line 30
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnNewIntentListener(Ll0/a;)V

    .line 33
    new-instance v0, Landroidx/activity/d;

    .line 35
    invoke-direct {v0, p0, v2}, Landroidx/activity/d;-><init>(Landroidx/activity/ComponentActivity;I)V

    .line 38
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Lf/c;)V

    .line 41
    return-void
.end method

.method private synthetic lambda$init$0()Landroid/os/Bundle;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 6
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    return-object v0
.end method

.method private synthetic lambda$init$1(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/o;->a()V

    .line 6
    return-void
.end method

.method private synthetic lambda$init$2(Landroid/content/Intent;)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/o;->a()V

    .line 6
    return-void
.end method

.method private lambda$init$3(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 5
    iget-object v0, p1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, p1, v1}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/q;Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    .line 11
    return-void
.end method

.method private static markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_5e

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 22
    if-nez v1, :cond_18

    .line 24
    goto :goto_9

    .line 25
    :cond_18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_27

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, p1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 38
    move-result v2

    .line 39
    or-int/2addr v0, v2

    .line 40
    :cond_27
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 42
    const/4 v3, 0x1

    .line 43
    const-string v4, "setCurrentState"

    .line 45
    if-eqz v2, :cond_48

    .line 47
    invoke-virtual {v2}, Landroidx/fragment/app/j0;->b()V

    .line 50
    iget-object v2, v2, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 52
    iget-object v2, v2, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 54
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 56
    invoke-virtual {v2, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_48

    .line 62
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/j0;

    .line 64
    iget-object v0, v0, Landroidx/fragment/app/j0;->d:Landroidx/lifecycle/n;

    .line 66
    invoke-virtual {v0, v4}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Landroidx/lifecycle/n;->g(Landroidx/lifecycle/Lifecycle$State;)V

    .line 72
    move v0, v3

    .line 73
    :cond_48
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 75
    iget-object v2, v2, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 77
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 79
    invoke-virtual {v2, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_9

    .line 85
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 87
    invoke-virtual {v0, v4}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Landroidx/lifecycle/n;->g(Landroidx/lifecycle/Lifecycle$State;)V

    .line 93
    move v0, v3

    .line 94
    goto :goto_9

    .line 95
    :cond_5e
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/fragment/app/r;

    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/r;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p4}, Landroidx/core/app/ComponentActivity;->shouldDumpInternalState([Ljava/lang/String;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    const-string v0, "Local FragmentActivity "

    .line 16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    const-string v0, " State:"

    .line 32
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "  "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    const-string v1, "mCreated="

    .line 57
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    .line 62
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 65
    const-string v1, " mResumed="

    .line 67
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 72
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 75
    const-string v1, " mStopped="

    .line 77
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 82
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_61

    .line 91
    invoke-static {p0}, La1/a;->a(Landroidx/lifecycle/m;)La1/b;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v0, p3}, La1/b;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 98
    :cond_61
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 100
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 102
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 104
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    return-object v0
.end method

.method public getSupportLoaderManager()La1/a;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, La1/a;->a(Landroidx/lifecycle/m;)La1/b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public markFragmentsCreated()V
    .registers 3

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->a()V

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 9
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 6
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 11
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 13
    iget-object p1, p1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 15
    iget-object p1, p1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p1, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 20
    iput-boolean v0, p1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 22
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 24
    iput-boolean v0, v1, Landroidx/fragment/app/v;->f:Z

    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 30
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->k()V

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 15
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 20
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_8
    const/4 v0, 0x6

    .line 10
    if-ne p1, v0, :cond_16

    .line 12
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 14
    iget-object p1, p1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 16
    iget-object p1, p1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->i(Landroid/view/MenuItem;)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 9
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 11
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 19
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 24
    return-void
.end method

.method public onPostResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 7
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->a()V

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 9
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->a()V

    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 12
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 16
    iget-object v1, v1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 18
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 21
    return-void
.end method

.method public onResumeFragments()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 3
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 10
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 12
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 17
    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 19
    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 21
    iput-boolean v1, v2, Landroidx/fragment/app/v;->f:Z

    .line 23
    const/4 v1, 0x7

    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 27
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->a()V

    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 12
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_24

    .line 17
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    .line 19
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 21
    iget-object v1, v1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 23
    iget-object v1, v1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 25
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 27
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 29
    iget-object v3, v1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 31
    iput-boolean v0, v3, Landroidx/fragment/app/v;->f:Z

    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 37
    :cond_24
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 39
    iget-object v1, v1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 41
    iget-object v1, v1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 43
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->x(Z)Z

    .line 46
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 48
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 50
    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 53
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 55
    iget-object v1, v1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 57
    iget-object v1, v1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 59
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 61
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 63
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 65
    iput-boolean v0, v2, Landroidx/fragment/app/v;->f:Z

    .line 67
    const/4 v0, 0x5

    .line 68
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 71
    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/o;->a()V

    .line 6
    return-void
.end method

.method public onStop()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/o;

    .line 12
    iget-object v1, v1, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 16
    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 18
    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 20
    iput-boolean v0, v2, Landroidx/fragment/app/v;->f:Z

    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 26
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/n;

    .line 28
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 33
    return-void
.end method

.method public setEnterSharedElementCallback(Ld0/o;)V
    .registers 2

    .line 1
    sget p1, Ld0/a;->a:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Ld0/a$b;->c(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 7
    return-void
.end method

.method public setExitSharedElementCallback(Ld0/o;)V
    .registers 2

    .line 1
    sget p1, Ld0/a;->a:I

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Ld0/a$b;->d(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 7
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p2  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6
    .param p2  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    .line 2
    sget p1, Ld0/a;->a:I

    .line 3
    invoke-static {p0, p2, v0, p4}, Ld0/a$a;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 4
    :cond_9
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .param p2  # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    move v3, p3

    .line 3
    if-ne v3, v0, :cond_14

    .line 5
    sget v0, Ld0/a;->a:I

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p2

    .line 9
    move v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    move v6, p6

    .line 13
    move/from16 v7, p7

    .line 15
    move-object/from16 v8, p8

    .line 17
    invoke-static/range {v1 .. v8}, Ld0/a$a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public supportFinishAfterTransition()V
    .registers 2

    .line 1
    sget v0, Ld0/a;->a:I

    .line 3
    invoke-static {p0}, Ld0/a$b;->a(Landroid/app/Activity;)V

    .line 6
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .registers 2

    .line 1
    sget v0, Ld0/a;->a:I

    .line 3
    invoke-static {p0}, Ld0/a$b;->b(Landroid/app/Activity;)V

    .line 6
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .registers 2

    .line 1
    sget v0, Ld0/a;->a:I

    .line 3
    invoke-static {p0}, Ld0/a$b;->e(Landroid/app/Activity;)V

    .line 6
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
