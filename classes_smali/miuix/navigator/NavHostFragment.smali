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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    return-void
.end method

.method public static synthetic b(Lmiuix/navigator/NavHostFragment;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lmiuix/navigator/NavHostFragment;->lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p2

    sub-int/2addr p5, p3

    int-to-float p3, p5

    invoke-static {p1, p3}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p1

    invoke-virtual {p0}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object p3

    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveState;->getWindowWidthDp()I

    move-result p4

    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveState;->getWindowHeightDp()I

    move-result p5

    invoke-static {p2, p1, p4, p5}, Lmiuix/responsive/ResponsiveStateHelper;->detectResponsiveWindowType(IIII)I

    move-result p1

    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    move-result p2

    if-eq p2, p1, :cond_38

    invoke-virtual {p3, p1}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    :cond_38
    return-void
.end method


# virtual methods
.method public createNavigator(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)Lmiuix/navigator/NavigatorImpl;
    .registers 4

    new-instance v0, Lmiuix/navigator/NavigatorImpl;

    invoke-direct {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;-><init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V

    return-object v0
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    iget-object v1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v1, v0, p1, p2, p3}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(ILandroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public getDeviceType()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    return v0
.end method

.method public getNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->findNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p1

    return-object p1
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0
.end method

.method public getResponsiveSubject()Landroidx/fragment/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/NavHostFragment;->getResponsiveSubject()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lmiuix/navigator/NavHostFragment;->createNavigator(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    new-instance v0, Lmiuix/navigator/NavHostFragment$1;

    invoke-direct {v0, p0, p0}, Lmiuix/navigator/NavHostFragment$1;-><init>(Lmiuix/navigator/NavHostFragment;Lmiuix/responsive/interfaces/IResponsive;)V

    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->dispatchConfigurationChanged()V

    :cond_1f
    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/navigator/NavHostFragment;->mDeviceType:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->updateResponsiveState()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v1}, Lmiuix/navigator/NavigatorImpl;->getOnBackPressedCallback()Landroidx/activity/h;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/m;Landroidx/activity/h;)V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_41

    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    :cond_41
    iget-object p1, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorImpl;->dispatchCreate()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    sget p3, Lmiuix/navigator/R$layout;->miuix_navigator_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchDestroy()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getOnBackPressedCallback()Landroidx/activity/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/h;->remove()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchDestroyView()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->releaseView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->dispatchKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchPause()V

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

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/navigator/NavigatorImpl;->dispatchProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->dispatchStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    iget-object p2, p0, Lmiuix/navigator/NavHostFragment;->mNavigator:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p2, p1}, Lmiuix/navigator/NavigatorImpl;->setNavigationView(Landroid/view/View;)V

    new-instance p2, Lmiuix/navigator/j;

    invoke-direct {p2, p0}, Lmiuix/navigator/j;-><init>(Lmiuix/navigator/NavHostFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public testNotifyResponseChange(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavHostFragment;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->testNotifyResponseChange(I)V

    return-void
.end method
