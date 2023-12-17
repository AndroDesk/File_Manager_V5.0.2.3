.class Lmiuix/navigator/NavigatorFragmentDelegate;
.super Lmiuix/appcompat/app/FragmentDelegate;
.source "NavigatorFragmentDelegate.java"


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mNavigator:Lmiuix/navigator/SubNavigator;

.field public mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mNavigator:Lmiuix/navigator/SubNavigator;

    iput-object p2, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lmiuix/appcompat/app/IFragment;

    if-eqz v2, :cond_17

    instance-of v2, v1, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v2}, Lmiuix/appcompat/app/IFragment;->isRegisterResponsive()Z

    move-result v2

    if-nez v2, :cond_17

    check-cast v1, Lmiuix/responsive/interfaces/IResponsive;

    invoke-interface {v1, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    goto :goto_17

    :cond_3a
    return-void
.end method

.method public final getNavigator()Lmiuix/navigator/SubNavigator;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mNavigator:Lmiuix/navigator/SubNavigator;

    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_d

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->isRegisterResponsive()Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_15

    invoke-super {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lmiuix/navigator/app/NavigatorResponsiveProvider;

    if-eqz v1, :cond_26

    check-cast v0, Lmiuix/navigator/app/NavigatorResponsiveProvider;

    invoke-interface {v0}, Lmiuix/responsive/interfaces/IResponsive;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-super {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 4

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    sget v2, Lmiuix/navigator/R$id;->navigator_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/navigator/SubNavigator;->removeNavigatorSwitch(Landroid/view/View;)V

    :cond_15
    invoke-super {p0}, Lmiuix/appcompat/app/FragmentDelegate;->onDestroyView()V

    if-eqz v0, :cond_25

    iget-object v1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz v2, :cond_25

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-virtual {v0, v1}, Lmiuix/navigator/SubNavigator;->removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    :cond_25
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p2, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, p2, Lmiuix/navigator/NavigatorFragmentListener;

    if-eqz v0, :cond_14

    check-cast p2, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-virtual {p1, p2}, Lmiuix/navigator/SubNavigator;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    :cond_14
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorFragmentDelegate;->updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V

    :cond_21
    return-void
.end method

.method public updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V
    .registers 7

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v0

    if-eqz p1, :cond_41

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lmiuix/navigator/R$id;->navigator_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_41

    iget-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    if-nez v3, :cond_1f

    new-instance v3, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-direct {v3}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;-><init>()V

    iput-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    :cond_1f
    iget-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->attachViews(Landroid/view/View;)V

    iget-object v3, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    sget v4, Lmiuix/navigator/R$id;->up:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->attachViews(Landroid/view/View;)V

    iget-object v1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getCustomView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;->attachViews(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/navigator/NavigatorFragmentDelegate;->mSwitchPresenter:Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-virtual {v0, v2, p1}, Lmiuix/navigator/SubNavigator;->addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    :cond_41
    return-void
.end method
