.class Lmiuix/navigator/NavSecondaryContentFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavSecondaryContentFragmentDelegate.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/navigator/NavSecondaryContentFragmentDelegate;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;->setSecondaryContentReady()V

    return-void
.end method

.method private setSecondaryContentReady()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryContentReady(Z)V

    return-void
.end method


# virtual methods
.method public checkThemeLegality()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$attr;->isNavigatorSecondaryContentTheme:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.Light/Dark.SecondaryContent theme (or descendant) with this fragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->isUserFocused()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/SubNavigator;->requestUserFocus(Z)Z

    :cond_15
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    instance-of p1, p1, Lmiuix/view/EditActionMode;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/navigator/SubNavigator;->requestUserFocus(Z)Z

    goto :goto_17

    :cond_10
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->requestFocus()V

    :goto_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$attr;->navigatorSecondaryContentStyle:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p2, :cond_14

    if-eqz p1, :cond_11

    new-instance p2, Lmiuix/navigator/NavSecondaryContentFragmentDelegate$1;

    invoke-direct {p2, p0}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate$1;-><init>(Lmiuix/navigator/NavSecondaryContentFragmentDelegate;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_14

    :cond_11
    invoke-direct {p0}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;->setSecondaryContentReady()V

    :cond_14
    :goto_14
    return-object p1
.end method

.method public onDestroyView()V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lmiuix/navigator/R$id;->navigator_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/navigator/NavigatorImpl;->removeSecondaryContentSwitch(Landroid/view/View;)V

    invoke-super {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v2

    sget-object v3, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    if-eq v2, v3, :cond_3f

    sget-object v3, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v2, v3, :cond_1d

    goto :goto_3f

    :cond_1d
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getActionBarStrategy()Lmiuix/appcompat/app/strategy/IActionBarStrategy;

    move-result-object v2

    if-eqz v2, :cond_2f

    instance-of v2, v2, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;

    if-nez v2, :cond_2f

    new-instance v2, Lmiuix/navigator/app/SecondaryContentActionBarStrategy;

    invoke-direct {v2}, Lmiuix/navigator/app/SecondaryContentActionBarStrategy;-><init>()V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V

    :cond_2f
    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->canPopSecondaryContent()Z

    move-result v1

    if-nez v1, :cond_60

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    goto :goto_60

    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    sget-object v3, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne v2, v3, :cond_4b

    or-int/lit16 v1, v1, 0x2000

    :cond_4b
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    new-instance v1, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;

    invoke-direct {v1}, Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;-><init>()V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V

    goto :goto_60

    :cond_57
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(I)V

    :cond_60
    :goto_60
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
