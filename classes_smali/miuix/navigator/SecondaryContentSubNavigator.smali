.class Lmiuix/navigator/SecondaryContentSubNavigator;
.super Lmiuix/navigator/SubNavigator;
.source "SecondaryContentSubNavigator.java"


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigator/SubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    .line 4
    invoke-virtual {p1, p0}, Lmiuix/navigator/NavigatorImpl;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 7
    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/SecondaryContentSubNavigator;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/SecondaryContentSubNavigator;->lambda$onControllerAttach$0()V

    return-void
.end method

.method private synthetic lambda$onControllerAttach$0()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_24

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, v1}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    .line 19
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryContentReady(Z)V

    .line 30
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lmiuix/navigator/FragmentAnimationHelper;->showContentFragment(Lmiuix/navigator/NavigatorImpl;)V

    .line 37
    :cond_24
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    .line 44
    return-void
.end method


# virtual methods
.method public addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 8
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.secondaryContent"

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryOnTop()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isUserFocused()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isSecondaryContentUserFocused()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/navigator/SubNavigator;->onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V

    .line 4
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorFragmentController;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lmiuix/navigator/m;

    .line 10
    invoke-direct {v1, p0}, Lmiuix/navigator/m;-><init>(Lmiuix/navigator/SecondaryContentSubNavigator;)V

    .line 13
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$m;)V

    .line 16
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorFragmentController;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lmiuix/navigator/SecondaryContentSubNavigator$1;

    .line 22
    invoke-direct {v0, p0}, Lmiuix/navigator/SecondaryContentSubNavigator$1;-><init>(Lmiuix/navigator/SecondaryContentSubNavigator;)V

    .line 25
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->m:Landroidx/fragment/app/s;

    .line 27
    iget-object p1, p1, Landroidx/fragment/app/s;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    new-instance v1, Landroidx/fragment/app/s$a;

    .line 31
    invoke-direct {v1, v0}, Landroidx/fragment/app/s$a;-><init>(Landroidx/fragment/app/FragmentManager$l;)V

    .line 34
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public onSecondaryContentVisibilityChanged(I)V
    .registers 6
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    const/4 v2, 0x3

    .line 10
    and-int/2addr p1, v2

    .line 11
    const/4 v3, 0x4

    .line 12
    if-eqz p1, :cond_16

    .line 14
    if-eq p1, v1, :cond_15

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    move v1, v3

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, v2

    .line 23
    :cond_16
    :goto_16
    if-ne v1, v3, :cond_1b

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v2, v1

    .line 29
    :goto_1c
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorFragmentController;->setFragmentState(I)V

    .line 36
    return-void
.end method

.method public removeNavigatorSwitch(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeSecondaryContentSwitch(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public requestFocus(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isContentUserFocused()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_12

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1, p1}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    .line 19
    :cond_12
    return-void
.end method

.method public requestUserFocus(Z)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-virtual {p0}, Lmiuix/navigator/Navigator;->requestFocus()V

    .line 16
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->userFocusSecondaryContent(Z)V

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method
