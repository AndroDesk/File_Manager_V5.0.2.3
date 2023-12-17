.class Lmiuix/navigator/SecondaryContentSubNavigator;
.super Lmiuix/navigator/SubNavigator;
.source "SecondaryContentSubNavigator.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/SubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    invoke-virtual {p1, p0}, Lmiuix/navigator/NavigatorImpl;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/SecondaryContentSubNavigator;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/SecondaryContentSubNavigator;->lambda$onControllerAttach$0()V

    return-void
.end method

.method private synthetic lambda$onControllerAttach$0()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryContentReady(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-static {v0}, Lmiuix/navigator/FragmentAnimationHelper;->showContentFragment(Lmiuix/navigator/NavigatorImpl;)V

    :cond_24
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method


# virtual methods
.method public addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.secondaryContent"

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryOnTop()Z

    move-result v0

    return v0
.end method

.method public isUserFocused()Z
    .registers 2

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryContentUserFocused()Z

    move-result v0

    return v0
.end method

.method public onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/navigator/SubNavigator;->onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorFragmentController;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lmiuix/navigator/m;

    invoke-direct {v1, p0}, Lmiuix/navigator/m;-><init>(Lmiuix/navigator/SecondaryContentSubNavigator;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$m;)V

    invoke-virtual {p1}, Lmiuix/navigator/NavigatorFragmentController;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lmiuix/navigator/SecondaryContentSubNavigator$1;

    invoke-direct {v0, p0}, Lmiuix/navigator/SecondaryContentSubNavigator$1;-><init>(Lmiuix/navigator/SecondaryContentSubNavigator;)V

    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    iget-object p1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/fragment/app/s$a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/s$a;-><init>(Landroidx/fragment/app/FragmentManager$l;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSecondaryContentVisibilityChanged(I)V
    .registers 6
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v2, 0x3

    and-int/2addr p1, v2

    const/4 v3, 0x4

    if-eqz p1, :cond_16

    if-eq p1, v1, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    return-void

    :cond_13
    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    :cond_16
    :goto_16
    if-ne v1, v3, :cond_1b

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorFragmentController;->setFragmentState(I)V

    return-void
.end method

.method public removeNavigatorSwitch(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeSecondaryContentSwitch(Landroid/view/View;)V

    return-void
.end method

.method public requestFocus(Z)V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isContentUserFocused()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    :cond_12
    return-void
.end method

.method public requestUserFocus(Z)Z
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-virtual {p0}, Lmiuix/navigator/Navigator;->requestFocus()V

    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->userFocusSecondaryContent(Z)V

    const/4 p1, 0x1

    return p1
.end method
