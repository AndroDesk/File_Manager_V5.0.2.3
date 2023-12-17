.class public Lmiuix/appcompat/app/ListFragment;
.super Landroidx/fragment/app/ListFragment;
.source "ListFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/ListFragment;",
        "Lmiuix/appcompat/app/IFragment;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 9
    return-void
.end method


# virtual methods
.method public bindViewWithContentInset(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->bindViewWithContentInset(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public checkThemeLegality()V
    .registers 1

    return-void
.end method

.method public dismissImmersionMenu(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 6
    return-void
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 6
    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getContentInset()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInflatedView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getInflatedView()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

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
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->getResponsiveSubject()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public hasActionBar()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->hasActionBar()Z

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    if-eqz v0, :cond_21

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_21

    .line 15
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 17
    if-eqz v0, :cond_21

    .line 19
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 21
    if-eqz v0, :cond_21

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_21

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 34
    :cond_21
    return-void
.end method

.method public isInEditActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->isInEditActionMode()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isIsInSearchActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->isIsInSearchActionMode()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRegisterResponsive()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->isRegisterResponsive()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isResponsiveEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 11
    move-result-object p1

    .line 12
    instance-of v0, p1, Lmiuix/appcompat/app/DelegateFragmentFactory;

    .line 14
    if-eqz v0, :cond_18

    .line 16
    check-cast p1, Lmiuix/appcompat/app/DelegateFragmentFactory;

    .line 18
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/DelegateFragmentFactory;->createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    new-instance p1, Lmiuix/appcompat/app/FragmentDelegate;

    .line 27
    invoke-direct {p1, p0}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 30
    iput-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 32
    :goto_1f
    iget-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/app/ListFragment;->isResponsiveEnabled()Z

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/FragmentDelegate;->setResponsiveEnabled(Z)V

    .line 41
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ListFragment;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    .line 9
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1b

    .line 4
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 6
    if-eqz p1, :cond_1b

    .line 8
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 10
    if-eqz p1, :cond_1b

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1b

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1b

    .line 24
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 27
    move-result v0

    .line 28
    :cond_1b
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    instance-of p2, p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 9
    if-eqz p2, :cond_44

    .line 11
    iget-object p2, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 13
    invoke-virtual {p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getUiOptionsFromMetadata()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    const-string p3, "splitActionBarWhenNarrow"

    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_27

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p3

    .line 33
    sget v0, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    .line 35
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 38
    move-result p3

    .line 39
    goto :goto_3c

    .line 40
    :cond_27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    move-result-object p3

    .line 44
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    .line 46
    invoke-virtual {p3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 49
    move-result-object p3

    .line 50
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowSplitActionBar:I

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 56
    move-result v0

    .line 57
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    move p3, v0

    .line 61
    :goto_3c
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 63
    move-object v1, p1

    .line 64
    check-cast v1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 66
    invoke-virtual {v0, p3, p2, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->addSplitActionBar(ZZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 69
    :cond_44
    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 10
    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDispatchNestedScrollOffset([I)V

    .line 6
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onExtraPaddingChanged(I)V

    .line 6
    return-void
.end method

.method public final onHiddenChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 4
    if-nez p1, :cond_c

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 13
    :cond_c
    xor-int/lit8 p1, p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ListFragment;->onVisibilityChanged(Z)V

    .line 18
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .registers 4

    .line 1
    if-nez p1, :cond_19

    .line 3
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 5
    if-eqz p1, :cond_19

    .line 7
    iget-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 9
    if-eqz p1, :cond_19

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_19

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_19

    .line 23
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 26
    :cond_19
    return-void
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onPostResume()V

    .line 9
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onStop()V

    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public requestDispatchContentInset()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->requestDispatchContentInset()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public requestWindowFeature(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setCorrectNestedScrollMotionEventEnabled(Z)V

    .line 6
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 6
    if-eq v0, p1, :cond_1c

    .line 8
    iput-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1c

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1c

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 29
    :cond_1c
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    .line 6
    return-void
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 6
    if-eq v0, p1, :cond_1c

    .line 8
    iput-boolean p1, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1c

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1c

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 29
    :cond_1c
    return-void
.end method

.method public setThemeRes(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    .line 6
    return-void
.end method

.method public showImmersionMenu()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public updateOptionsMenuContent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1d

    .line 11
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mHasMenu:Z

    .line 13
    if-eqz v0, :cond_1d

    .line 15
    iget-boolean v0, p0, Lmiuix/appcompat/app/ListFragment;->mMenuVisible:Z

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/app/ListFragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 27
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 30
    :cond_1d
    return-void
.end method
