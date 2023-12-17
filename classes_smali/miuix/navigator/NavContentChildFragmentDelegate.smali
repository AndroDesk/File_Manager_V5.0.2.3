.class Lmiuix/navigator/NavContentChildFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavContentChildFragmentDelegate.java"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_17

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-super {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$attr;->navigatorContentChildStyle:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lmiuix/appcompat/app/Fragment;

    if-eqz p2, :cond_26

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object p1

    instance-of p2, p1, Lmiuix/navigator/NavContentFragmentDelegate;

    if-eqz p2, :cond_26

    invoke-virtual {p0}, Lmiuix/navigator/NavContentChildFragmentDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p2

    check-cast p1, Lmiuix/navigator/NavContentFragmentDelegate;

    invoke-virtual {p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->updateViewAfterNavigatorSwitchPresenter(Lmiuix/appcompat/app/ActionBar;)V

    :cond_26
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavContentChildFragmentDelegate;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/Fragment;

    if-eqz v1, :cond_11

    check-cast v0, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
