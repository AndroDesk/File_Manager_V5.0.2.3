.class Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;
.super Landroidx/fragment/app/q;
.source "NavigatorFragmentController.java"

# interfaces
.implements Landroidx/core/content/OnConfigurationChangedProvider;
.implements Landroidx/core/content/OnTrimMemoryProvider;
.implements Ld0/k;
.implements Ld0/l;
.implements Landroidx/lifecycle/f0;
.implements Lc1/e;
.implements Landroidx/fragment/app/w;
.implements Lm0/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/NavigatorFragmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/q<",
        "Lmiuix/navigator/NavigatorFragmentController;",
        ">;",
        "Landroidx/core/content/OnConfigurationChangedProvider;",
        "Landroidx/core/content/OnTrimMemoryProvider;",
        "Ld0/k;",
        "Ld0/l;",
        "Landroidx/lifecycle/f0;",
        "Lc1/e;",
        "Landroidx/fragment/app/w;",
        "Lm0/j;"
    }
.end annotation


# instance fields
.field private final mFragment:Lmiuix/navigator/NavHostFragment;

.field private final mSavedStateRegistryController:Lc1/d;

.field public final synthetic this$0:Lmiuix/navigator/NavigatorFragmentController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigatorFragmentController;Lmiuix/navigator/NavHostFragment;)V
    .registers 5

    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->this$0:Lmiuix/navigator/NavigatorFragmentController;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/fragment/app/q;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p2, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    new-instance p1, Lc1/d;

    invoke-direct {p1, p0}, Lc1/d;-><init>(Lc1/e;)V

    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mSavedStateRegistryController:Lc1/d;

    invoke-virtual {p1}, Lc1/d;->a()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lc1/d;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mSavedStateRegistryController:Lc1/d;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;)Lmiuix/navigator/NavHostFragment;
    .registers 1

    iget-object p0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    return-object p0
.end method


# virtual methods
.method public addMenuProvider(Lm0/o;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Lm0/o;)V

    :cond_b
    return-void
.end method

.method public addMenuProvider(Lm0/o;Landroidx/lifecycle/m;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->addMenuProvider(Lm0/o;Landroidx/lifecycle/m;)V

    :cond_b
    return-void
.end method

.method public addMenuProvider(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->addMenuProvider(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V

    :cond_b
    return-void
.end method

.method public addOnConfigurationChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Ll0/a;)V

    :cond_b
    return-void
.end method

.method public addOnMultiWindowModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnMultiWindowModeChangedListener(Ll0/a;)V

    :cond_b
    return-void
.end method

.method public addOnPictureInPictureModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnPictureInPictureModeChangedListener(Ll0/a;)V

    :cond_b
    return-void
.end method

.method public addOnTrimMemoryListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->addOnTrimMemoryListener(Ll0/a;)V

    :cond_b
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->this$0:Lmiuix/navigator/NavigatorFragmentController;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorFragmentController;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getSavedStateRegistry()Lc1/c;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mSavedStateRegistryController:Lc1/d;

    iget-object v0, v0, Lc1/d;->b:Lc1/c;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/e0;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/e0;

    move-result-object v0

    return-object v0
.end method

.method public invalidateMenu()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->invalidateMenu()V

    :cond_b
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-virtual {p2, p2}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->onGetHost()Lmiuix/navigator/NavigatorFragmentController;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Lmiuix/navigator/NavigatorFragmentController;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->this$0:Lmiuix/navigator/NavigatorFragmentController;

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHasView()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public removeMenuProvider(Lm0/o;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeMenuProvider(Lm0/o;)V

    :cond_b
    return-void
.end method

.method public removeOnConfigurationChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnConfigurationChangedListener(Ll0/a;)V

    :cond_b
    return-void
.end method

.method public removeOnMultiWindowModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnMultiWindowModeChangedListener(Ll0/a;)V

    :cond_b
    return-void
.end method

.method public removeOnPictureInPictureModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnPictureInPictureModeChangedListener(Ll0/a;)V

    :cond_b
    return-void
.end method

.method public removeOnTrimMemoryListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentController$HostCallbacks;->mFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->removeOnTrimMemoryListener(Ll0/a;)V

    :cond_b
    return-void
.end method
