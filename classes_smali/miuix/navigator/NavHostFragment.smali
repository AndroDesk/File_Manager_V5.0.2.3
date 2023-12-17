.class public Lmiuix/navigator/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavHostFragment.java"

# interfaces
.implements Lmiuix/navigator/app/NavigatorResponsiveProvider;
.implements Lmiuix/appcompat/app/ShortcutsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lmiuix/navigator/app/NavigatorResponsiveProvider<",
        "Landroidx/fragment/app/Fragment;",
        ">;",
        "Lmiuix/appcompat/app/ShortcutsCallback;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "miuix.navHostFragment"


# instance fields
.field private mDeviceType:I

.field private mNavigator:Lmiuix/navigator/NavigatorImpl;

.field private mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    .line 7
    return-void
.end method

.method public static synthetic b(Lmiuix/navigator/NavHostFragment;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lmiuix/navigator/NavHostFragment;->lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 15
    sub-int/2addr p4, p2

    .line 16
    int-to-float p2, p4

    .line 17
    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 20
    move-result p2

    .line 21
    sub-int/2addr p5, p3

    .line 22
    int-to-float p3, p5

    .line 23
    invoke-static {p1, p3}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveState;->getWindowWidthDp()I

    .line 34
    move-result p4

    .line 35
    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveState;->getWindowHeightDp()I

    .line 38
    move-result p5

    .line 39
    invoke-static {p2, p1, p4, p5}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(IIII)I

    .line 42
    move-result p1

    .line 43
    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    .line 46
    move-result p2

    .line 47
    if-eq p2, p1, :cond_38

    .line 49
    invoke-virtual {p3, p1}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    .line 52
    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 54
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    .line 57
    :cond_38
    return-void
.end method


# virtual methods
.method public createNavigator(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)Lmiuix/navigator/NavigatorImpl;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-direct {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;-><init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V

    .line 6
    return-object v0
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    .line 14
    iget-object v1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 16
    invoke-virtual {v1, v0, p1, p2, p3}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(ILandroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 19
    return-void
.end method

.method public getDeviceType()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    .line 3
    return v0
.end method

.method public getNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->findNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResponsiveSubject()Landroidx/fragment/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavHostFragment;->getResponsiveSubject()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->dispatchActivityCreated()V

    .line 9
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p0}, Lmiuix/navigator/NavHostFragment;->createNavigator(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)Lmiuix/navigator/NavigatorImpl;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 11
    new-instance v0, Lmiuix/navigator/NavHostFragment$1;

    .line 13
    invoke-direct {v0, p0, p0}, Lmiuix/navigator/NavHostFragment$1;-><init>(Lmiuix/navigator/NavHostFragment;Lmiuix/responsive/interfaces/IResponsive;)V

    .line 16
    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 18
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 14
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    .line 29
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->dispatchConfigurationChanged()V

    .line 32
    :cond_1f
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 34
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v1, Landroidx/fragment/app/a;

    .line 23
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 26
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    .line 32
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 34
    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->updateResponsiveState()V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 47
    invoke-virtual {v1}, Lmiuix/navigator/NavigatorImpl;->getOnBackPressedCallback()Landroidx/activity/h;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/m;Landroidx/activity/h;)V

    .line 54
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 56
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->onCreate(Landroid/os/Bundle;)V

    .line 59
    if-nez p1, :cond_41

    .line 61
    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 63
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    .line 66
    :cond_41
    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 68
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->dispatchCreate()V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    sget p3, Lmiuix/navigator/R$layout;->miuix_navigator_screen:I

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchDestroy()V

    .line 9
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getOnBackPressedCallback()Landroidx/activity/h;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/activity/h;->remove()V

    .line 18
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchDestroyView()V

    .line 9
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->releaseView()V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 17
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 7
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyUp(ILandroid/view/KeyEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchPause()V

    .line 9
    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/navigator/NavigatorImpl;->dispatchProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 6
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchResume()V

    .line 9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchStart()V

    .line 9
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchStop()V

    .line 9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {p2, p1}, Lmiuix/navigator/NavigatorImpl;->setNavigationView(Landroid/view/View;)V

    .line 6
    new-instance p2, Lmiuix/navigator/j;

    .line 8
    invoke-direct {p2, p0}, Lmiuix/navigator/j;-><init>(Lmiuix/navigator/NavHostFragment;)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 14
    return-void
.end method

.method public testNotifyResponseChange(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->testNotifyResponseChange(I)V

    .line 6
    return-void
.end method
