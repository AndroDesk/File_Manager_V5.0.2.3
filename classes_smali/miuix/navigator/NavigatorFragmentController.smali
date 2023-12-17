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
.field public static final ACTIVITY_CREATED:I

.field public static final ATTACHED:I

.field public static final CREATED:I

.field public static final RESUMED:I

.field public static final STARTED:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/NavigatorFragmentController;->ACTIVITY_CREATED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/NavigatorFragmentController;->ATTACHED:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/NavigatorFragmentController;->CREATED:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/NavigatorFragmentController;->RESUMED:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/NavigatorFragmentController;->STARTED:I

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SubNavigator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHostState:I

    const/4 v1, 0x4

    iput v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mFragmentState:I

    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mNavigator:Lmiuix/navigator/SubNavigator;

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorFragmentController;->initController(Z)V

    return-void
.end method

.method private computeState()V
    .registers 3

    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHostState:I

    iget v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mFragmentState:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorFragmentController;->dispatchState(I)V

    return-void
.end method

.method private dispatchState(I)V
    .registers 10

    :goto_0
    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    if-eq p1, v0, :cond_d9

    const-string v1, "bad lifecycle"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-le p1, v0, :cond_7f

    const/4 v7, 0x0

    if-eqz v0, :cond_61

    if-eq v0, v6, :cond_4f

    if-eq v0, v3, :cond_36

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->t(I)V

    goto :goto_79

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->t(I)V

    goto :goto_79

    :cond_4f
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->t(I)V

    goto :goto_79

    :cond_61
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->G:Z

    iput-boolean v7, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    iput-boolean v7, v1, Landroidx/fragment/app/v;->f:Z

    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManager;->t(I)V

    :goto_79
    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    add-int/2addr v0, v6

    iput v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    goto :goto_0

    :cond_7f
    if-eq v0, v6, :cond_bf

    if-eq v0, v3, :cond_b5

    if-eq v0, v2, :cond_9e

    if-ne v0, v5, :cond_98

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->t(I)V

    goto :goto_d2

    :cond_98
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9e
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-boolean v6, v0, Landroidx/fragment/app/FragmentManager;->H:Z

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->N:Landroidx/fragment/app/v;

    iput-boolean v6, v1, Landroidx/fragment/app/v;->f:Z

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->t(I)V

    goto :goto_d2

    :cond_b5
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManager;->t(I)V

    goto :goto_d2

    :cond_bf
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->k()V

    invoke-direct {p0, v6}, Lmiuix/navigator/NavigatorFragmentController;->initController(Z)V

    :goto_d2
    iget v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    sub-int/2addr v0, v6

    iput v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mRealState:I

    goto/16 :goto_0

    :cond_d9
    return-void
.end method

.method private initController(Z)V
    .registers 4

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    iput-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    new-instance v0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    iget-object v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mNavigator:Lmiuix/navigator/SubNavigator;

    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/NavigatorImpl;->getNavHostFragment()Lmiuix/navigator/NavHostFragment;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;-><init>(Lmiuix/navigator/NavigatorFragmentController;Lmiuix/navigator/NavHostFragment;)V

    iput-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    new-instance v1, Landroidx/fragment/app/o;

    invoke-direct {v1, v0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/q;)V

    iput-object v1, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorFragmentController;->performRestore(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentController;->attachHost()V

    :cond_28
    return-void
.end method


# virtual methods
.method public attachHost()V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v1, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/q;Landroidx/fragment/app/n;Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mOnAttachListener:Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;

    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;->onAttach(Lmiuix/navigator/NavigatorFragmentController;)V

    :cond_11
    return-void
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$100(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lmiuix/navigator/NavHostFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/navigator/NavHostFragment;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mController:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mLifecycle:Landroidx/lifecycle/n;

    return-object v0
.end method

.method public getNavigator()Lmiuix/navigator/SubNavigator;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mNavigator:Lmiuix/navigator/SubNavigator;

    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$100(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lmiuix/navigator/NavHostFragment;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0
.end method

.method public getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$100(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lmiuix/navigator/NavHostFragment;

    move-result-object v0

    return-object v0
.end method

.method public performRestore(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$000(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lc1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc1/d;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController;->mHost:Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;

    invoke-static {v0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->access$000(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lc1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc1/d;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFragmentState(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mFragmentState:I

    invoke-direct {p0}, Lmiuix/navigator/NavigatorFragmentController;->computeState()V

    return-void
.end method

.method public setHostState(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mHostState:I

    invoke-direct {p0}, Lmiuix/navigator/NavigatorFragmentController;->computeState()V

    return-void
.end method

.method public setOnAttachListener(Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentController;->mOnAttachListener:Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;

    return-void
.end method
