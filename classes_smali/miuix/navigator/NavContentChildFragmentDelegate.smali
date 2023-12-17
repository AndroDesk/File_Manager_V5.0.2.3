.class Lmiuix/navigator/NavContentChildFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavContentChildFragmentDelegate.java"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 4
    iput-object p2, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 6
    return-void
.end method


# virtual methods
.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_17

    .line 7
    iget-object v0, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 15
    if-eqz v1, :cond_17

    .line 17
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 19
    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    invoke-super {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
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
    sget v0, Lmiuix/navigator/R$attr;->navigatorContentChildStyle:I

    .line 10
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    .line 17
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_26

    .line 10
    iget-object p1, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object p1

    .line 16
    instance-of p2, p1, Lmiuix/appcompat/app/Fragment;

    .line 18
    if-eqz p2, :cond_26

    .line 20
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 22
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 25
    move-result-object p1

    .line 26
    instance-of p2, p1, Lmiuix/navigator/NavContentFragmentDelegate;

    .line 28
    if-eqz p2, :cond_26

    .line 30
    invoke-virtual {p0}, Lmiuix/navigator/NavContentChildFragmentDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 33
    move-result-object p2

    .line 34
    check-cast p1, Lmiuix/navigator/NavContentFragmentDelegate;

    .line 36
    invoke-virtual {p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V

    .line 39
    :cond_26
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lmiuix/appcompat/app/Fragment;

    .line 9
    if-eqz v1, :cond_11

    .line 11
    check-cast v0, Lmiuix/appcompat/app/Fragment;

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
