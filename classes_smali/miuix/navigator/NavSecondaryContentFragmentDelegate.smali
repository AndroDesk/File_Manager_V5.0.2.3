.class Lmiuix/navigator/NavSecondaryContentFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavSecondaryContentFragmentDelegate.java"


# direct methods
.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/NavSecondaryContentFragmentDelegate;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;->setSecondaryContentReady()V

    .line 4
    return-void
.end method

.method private setSecondaryContentReady()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryContentReady(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public checkThemeLegality()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/navigator/R$attr;->isNavigatorSecondaryContentTheme:I

    .line 7
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "You need to use a Theme.Light/Dark.SecondaryContent theme (or descendant) with this fragment."

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->isUserFocused()Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_15

    .line 14
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/navigator/SubNavigator;->requestUserFocus(Z)Z

    .line 22
    :cond_15
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    instance-of p1, p1, Lmiuix/view/EditActionMode;

    .line 6
    if-eqz p1, :cond_10

    .line 8
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/navigator/SubNavigator;->requestUserFocus(Z)Z

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->requestFocus()V

    .line 24
    :goto_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    move-result-object p1

    .line 8
    sget v0, Lmiuix/navigator/R$attr;->navigatorSecondaryContentStyle:I

    .line 10
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    .line 17
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_14

    .line 7
    if-eqz p1, :cond_11

    .line 9
    new-instance p2, Lmiuix/navigator/NavSecondaryContentFragmentDelegate$1;

    .line 11
    invoke-direct {p2, p0}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate$1;-><init>(Lmiuix/navigator/NavSecondaryContentFragmentDelegate;)V

    .line 14
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    invoke-direct {p0}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;->setSecondaryContentReady()V

    .line 21
    :cond_14
    :goto_14
    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    sget v2, Lmiuix/navigator/R$id;->navigator_switch:I

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/navigator/NavigatorImpl;->removeSecondaryContentSwitch(Landroid/view/View;)V

    .line 22
    invoke-super {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->onDestroyView()V

    .line 25
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_57

    .line 17
    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 23
    if-eq v2, v3, :cond_3f

    .line 25
    sget-object v3, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 27
    if-ne v2, v3, :cond_1d

    .line 29
    goto :goto_3f

    .line 30
    :cond_1d
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getActionBarStrategy()Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2f

    .line 36
    instance-of v2, v2, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;

    .line 38
    if-nez v2, :cond_2f

    .line 40
    new-instance v2, Lmiuix/navigator/app/SecondaryContentActionBarStrategy;

    .line 42
    invoke-direct {v2}, Lmiuix/navigator/app/SecondaryContentActionBarStrategy;-><init>()V

    .line 45
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V

    .line 48
    :cond_2f
    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->canPopSecondaryContent()Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_60

    .line 54
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    .line 57
    move-result v1

    .line 58
    and-int/lit8 v1, v1, -0x5

    .line 60
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    .line 63
    goto :goto_60

    .line 64
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    .line 67
    move-result v1

    .line 68
    or-int/lit8 v1, v1, 0x4

    .line 70
    sget-object v3, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 72
    if-ne v2, v3, :cond_4b

    .line 74
    or-int/lit16 v1, v1, 0x2000

    .line 76
    :cond_4b
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    .line 79
    new-instance v1, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;

    .line 81
    invoke-direct {v1}, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;-><init>()V

    .line 84
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V

    .line 87
    goto :goto_60

    .line 88
    :cond_57
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    .line 91
    move-result v1

    .line 92
    or-int/lit8 v1, v1, 0x4

    .line 94
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    .line 97
    :cond_60
    :goto_60
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    return-void
.end method
