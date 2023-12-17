.class public Lmiuix/navigator/NavigatorFragmentController;
.super Ljava/lang/Object;
.source "NavigatorFragmentController.java"

# interfaces
.implements Landroidx/lifecycle/m;
.implements Lmiuix/navigator/app/NavigatorResponsiveProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;,
        Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;
    }
.end annotation


# static fields
.field public static final ACTIVITY_CREATED:I = 0x2

.field public static final ATTACHED:I = 0x0

.field public static final CREATED:I = 0x1

.field public static final RESUMED:I = 0x4

.field public static final STARTED:I = 0x3


# instance fields
.field private mController:Landroidx/fragment/app/o;

.field private mFragmentState:I

.field private mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

.field private mHostState:I

.field private mLifecycle:Landroidx/lifecycle/n;

.field private final mNavigator:Lmiuix/navigator/SubNavigator;

.field private mOnAttachListener:Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;

.field private mRealState:I


# direct methods
.method public constructor <init>(Lmiuix/navigator/SubNavigator;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHostState:I

    .line 7
    const/4 v1, 0x4

    .line 8
    iput v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mFragmentState:I

    .line 10
    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mNavigator:Lmiuix/navigator/SubNavigator;

    .line 12
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorFragmentController;->initController(Z)V

    .line 15
    return-void
.end method

.method private computeState()V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHostState:I

    .line 3
    iget v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mFragmentState:I

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorFragmentController;->dispatchState(I)V

    .line 12
    return-void
.end method

.method private dispatchState(I)V
    .registers 10

    .line 1
    :goto_0
    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    .line 3
    if-eq p1, v0, :cond_d9

    .line 5
    const-string v1, "bad lifecycle"

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x5

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x1

    .line 12
    if-le p1, v0, :cond_7f

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v0, :cond_61

    .line 17
    if-eq v0, v6, :cond_4f

    .line 19
    if-eq v0, v3, :cond_36

    .line 21
    if-ne v0, v2, :cond_30

    .line 23
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 25
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 27
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 30
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 32
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 34
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 36
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 38
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 40
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 42
    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    .line 44
    const/4 v1, 0x7

    .line 45
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 48
    goto :goto_79

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    :cond_36
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 57
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 59
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 62
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 64
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 66
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 68
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 70
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 72
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 74
    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    .line 76
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 79
    goto :goto_79

    .line 80
    :cond_4f
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 82
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 84
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 86
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 88
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 90
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 92
    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    .line 94
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 97
    goto :goto_79

    .line 98
    :cond_61
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 100
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 102
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 105
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 107
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 109
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 111
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    .line 113
    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 115
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 117
    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    .line 119
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 122
    :goto_79
    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    .line 124
    add-int/2addr v0, v6

    .line 125
    iput v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    .line 127
    goto :goto_0

    .line 128
    :cond_7f
    if-eq v0, v6, :cond_bf

    .line 130
    if-eq v0, v3, :cond_b5

    .line 132
    if-eq v0, v2, :cond_9e

    .line 134
    if-ne v0, v5, :cond_98

    .line 136
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 138
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 140
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 143
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 145
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 147
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 149
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 152
    goto :goto_d2

    .line 153
    :cond_98
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 155
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p1

    .line 159
    :cond_9e
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 161
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 163
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 166
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 168
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 170
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 172
    iput-boolean v6, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    .line 174
    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    .line 176
    iput-boolean v6, v1, Landroidx/fragment/app/v;->f:Z

    .line 178
    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 181
    goto :goto_d2

    .line 182
    :cond_b5
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 184
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 186
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 188
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManager;->t(I)V

    .line 191
    goto :goto_d2

    .line 192
    :cond_bf
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 194
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 196
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 199
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 201
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 203
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 205
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->k()V

    .line 208
    invoke-direct {p0, v6}, Lmiuix/navigator/NavigatorFragmentController;->initController(Z)V

    .line 211
    :goto_d2
    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    .line 213
    sub-int/2addr v0, v6

    .line 214
    iput v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_d9
    return-void
.end method

.method private initController(Z)V
    .registers 4

    .line 1
    new-instance v0, Landroidx/lifecycle/n;

    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    .line 6
    iput-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 8
    new-instance v0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    .line 10
    iget-object v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mNavigator:Lmiuix/navigator/SubNavigator;

    .line 12
    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lmiuix/navigator/NavigatorImpl;->getNavHostFragment()Lmiuix/navigator/NavHostFragment;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;-><init>(Lmiuix/navigator/NavigatorFragmentController;Lmiuix/navigator/NavHostFragment;)V

    .line 23
    iput-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    .line 25
    new-instance v1, Landroidx/fragment/app/o;

    .line 27
    invoke-direct {v1, v0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/q;)V

    .line 30
    iput-object v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 32
    if-eqz p1, :cond_28

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorFragmentController;->performRestore(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentController;->attachHost()V

    .line 41
    :cond_28
    return-void
.end method


# virtual methods
.method public attachHost()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 5
    iget-object v1, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v0, v0, v2}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/q;Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    .line 11
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mOnAttachListener:Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-interface {v0, p0}, Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;->onAttach(Lmiuix/navigator/NavigatorFragmentController;)V

    .line 18
    :cond_11
    return-void
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$100(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lmiuix/navigator/NavHostFragment;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/navigator/NavHostFragment;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 10
    return-void
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    .line 3
    return-object v0
.end method

.method public getNavigator()Lmiuix/navigator/SubNavigator;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mNavigator:Lmiuix/navigator/SubNavigator;

    .line 3
    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$100(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lmiuix/navigator/NavHostFragment;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$100(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lmiuix/navigator/NavHostFragment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public performRestore(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$000(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lc1/d;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lc1/d;->b(Landroid/os/Bundle;)V

    .line 10
    return-void
.end method

.method public performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$000(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lc1/d;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lc1/d;->c(Landroid/os/Bundle;)V

    .line 10
    return-void
.end method

.method public setFragmentState(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mFragmentState:I

    .line 3
    invoke-direct {p0}, Lmiuix/navigator/NavigatorFragmentController;->computeState()V

    .line 6
    return-void
.end method

.method public setHostState(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mHostState:I

    .line 3
    invoke-direct {p0}, Lmiuix/navigator/NavigatorFragmentController;->computeState()V

    .line 6
    return-void
.end method

.method public setOnAttachListener(Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mOnAttachListener:Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;

    .line 3
    return-void
.end method
