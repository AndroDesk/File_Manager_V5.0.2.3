.class Lmiuix/navigator/NavigatorFragmentDelegate;
.super Lmiuix/appcompat/app/FragmentDelegate;
.source "NavigatorFragmentDelegate.java"


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mNavigator:Lmiuix/navigator/SubNavigator;

.field public mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;


# direct methods
.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mNavigator:Lmiuix/navigator/SubNavigator;

    .line 6
    iput-object p2, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 8
    return-void
.end method


# virtual methods
.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_3a

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3a

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 36
    instance-of v2, v1, Lmiuix/appcompat/app/IFragment;

    .line 38
    if-eqz v2, :cond_17

    .line 40
    instance-of v2, v1, Lmiuix/responsive/interfaces/IResponsive;

    .line 42
    if-eqz v2, :cond_17

    .line 44
    move-object v2, v1

    .line 45
    check-cast v2, Lmiuix/appcompat/app/IFragment;

    .line 47
    invoke-interface {v2}, Lmiuix/appcompat/app/IFragment;->isRegisterResponsive()Z

    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_17

    .line 53
    check-cast v1, Lmiuix/responsive/interfaces/IResponsive;

    .line 55
    invoke-interface {v1, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 58
    goto :goto_17

    .line 59
    :cond_3a
    return-void
.end method

.method public final getNavigator()Lmiuix/navigator/SubNavigator;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mNavigator:Lmiuix/navigator/SubNavigator;

    .line 3
    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 9
    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->isRegisterResponsive()Z

    .line 12
    move-result v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    if-eqz v0, :cond_15

    .line 17
    invoke-super {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lmiuix/navigator/app/NavigatorResponsiveProvider;

    .line 30
    if-eqz v1, :cond_26

    .line 32
    check-cast v0, Lmiuix/navigator/app/NavigatorResponsiveProvider;

    .line 34
    invoke-interface {v0}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_26
    invoke-super {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_15

    .line 11
    if-eqz v1, :cond_15

    .line 13
    sget v2, Lmiuix/navigator/R$id;->navigator_switch:I

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/navigator/SubNavigator;->removeNavigatorSwitch(Landroid/view/View;)V

    .line 22
    :cond_15
    invoke-super {p0}, Lmiuix/appcompat/app/FragmentDelegate;->onDestroyView()V

    .line 25
    if-eqz v0, :cond_25

    .line 27
    iget-object v1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 29
    instance-of v2, v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 31
    if-eqz v2, :cond_25

    .line 33
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 35
    invoke-virtual {v0, v1}, Lmiuix/navigator/SubNavigator;->removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 38
    :cond_25
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_21

    .line 10
    iget-object p2, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 12
    instance-of v0, p2, Lmiuix/navigator/NavigatorFragmentListener;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    check-cast p2, Lmiuix/navigator/NavigatorFragmentListener;

    .line 18
    invoke-virtual {p1, p2}, Lmiuix/navigator/SubNavigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 21
    :cond_14
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_21

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorFragmentDelegate;->updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V

    .line 34
    :cond_21
    return-void
.end method

.method public updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_41

    .line 7
    if-eqz v0, :cond_41

    .line 9
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    sget v2, Lmiuix/navigator/R$id;->navigator_switch:I

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_41

    .line 21
    iget-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 23
    if-nez v3, :cond_1f

    .line 25
    new-instance v3, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 27
    invoke-direct {v3}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;-><init>()V

    .line 30
    iput-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 32
    :cond_1f
    iget-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 34
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->attachViews(Landroid/view/View;)V

    .line 41
    iget-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 43
    sget v4, Lmiuix/navigator/R$id;->up:I

    .line 45
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v3, v1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->attachViews(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getCustomView()Landroid/view/View;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->attachViews(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 63
    invoke-virtual {v0, v2, p1}, Lmiuix/navigator/SubNavigator;->addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 66
    :cond_41
    return-void
.end method
