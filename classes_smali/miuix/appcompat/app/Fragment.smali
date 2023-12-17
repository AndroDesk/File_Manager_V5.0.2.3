.class public Lmiuix/appcompat/app/Fragment;
.super Landroidx/fragment/app/Fragment;
.source "Fragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;
.implements Lmiuix/appcompat/app/IContentInsetState;
.implements Lmiuix/responsive/interfaces/IResponsive;
.implements Lmiuix/appcompat/app/ShortcutsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lmiuix/appcompat/app/IFragment;",
        "Lmiuix/appcompat/app/IContentInsetState;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Lmiuix/appcompat/app/Fragment;",
        ">;",
        "Lmiuix/appcompat/app/ShortcutsCallback;"
    }
.end annotation


# instance fields
.field public mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    .line 9
    return-void
.end method


# virtual methods
.method public bindViewWithContentInset(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 6
    return-void
.end method

.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 6
    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    return-object v0
.end method

.method public getBottomMenuCustomViewTranslationY()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getBottomMenuCustomViewTranslationY()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBottomMenuMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getBottomMenuMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getContentInset()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDelegate()Lmiuix/appcompat/app/FragmentDelegate;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    return-object v0
.end method

.method public getExtraHorizontalPadding()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getExtraHorizontalPadding()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getExtraHorizontalPaddingLevel()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInflatedView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getResponsiveSubject()Lmiuix/appcompat/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getResponsiveSubject()Lmiuix/appcompat/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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

.method public getWindowInfo()Lmiuix/core/util/WindowBaseInfo;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getWindowType()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getWindowInfo()Lmiuix/core/util/WindowBaseInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    iget v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public hasActionBar()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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

.method public hideBottomMenu()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->hideBottomMenu(Z)V

    return-void
.end method

.method public hideBottomMenu(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->hideBottomMenu(Z)V

    return-void
.end method

.method public hideBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->hideBottomMenuCustomView()V

    .line 6
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 17
    if-eqz v0, :cond_21

    .line 19
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    .line 21
    if-eqz v0, :cond_21

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_21

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 31
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 34
    :cond_21
    return-void
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->isExtraHorizontalPaddingEnable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isExtraPaddingApplyToContentEnable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->isExtraPaddingApplyToContentEnable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInEditActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 6
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iput-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    new-instance p1, Lmiuix/appcompat/app/FragmentDelegate;

    .line 27
    invoke-direct {p1, p0}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 30
    iput-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 32
    :goto_1f
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isResponsiveEnabled()Z

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    .line 9
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 6
    if-eqz p1, :cond_1b

    .line 8
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

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
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 27
    move-result v0

    .line 28
    :cond_1b
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 10
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->onDestroyView()V

    .line 9
    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onDispatchNestedScrollOffset([I)V

    .line 6
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onExtraPaddingChanged(I)V

    .line 6
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public final onHiddenChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 4
    if-nez p1, :cond_c

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 13
    :cond_c
    xor-int/lit8 p1, p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 18
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 8
    if-ne p1, v0, :cond_41

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_41

    .line 16
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->getDisplayOptions()I

    .line 23
    move-result p1

    .line 24
    and-int/lit8 p1, p1, 0x4

    .line 26
    if-eqz p1, :cond_41

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2a

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->onNavigateUp()Z

    .line 41
    move-result p1

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    .line 50
    move-result p1

    .line 51
    :goto_32
    if-nez p1, :cond_3f

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    .line 64
    :cond_3f
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_41
    const/4 p1, 0x0

    .line 67
    return p1
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
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 5
    if-eqz p1, :cond_19

    .line 7
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 7
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

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_34

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 52
    goto :goto_c

    .line 53
    :cond_34
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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onStop()V

    .line 9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_38

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_c

    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_c

    .line 43
    instance-of v2, v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    if-eqz v2, :cond_c

    .line 47
    check-cast v1, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 49
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_c

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onUpdateArguments(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    :cond_9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 8
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->getContentInset()Landroid/graphics/Rect;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_20

    .line 14
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 16
    if-nez p2, :cond_1d

    .line 18
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    if-nez p2, :cond_1d

    .line 22
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 24
    if-nez p2, :cond_1d

    .line 26
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 28
    if-eqz p2, :cond_20

    .line 30
    :cond_1d
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 33
    :cond_20
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

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public removeBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->removeBottomMenuCustomView()V

    .line 6
    return-void
.end method

.method public requestDispatchContentInset()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setBottomExtraInset(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setBottomExtraInset(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    if-ge v1, v0, :cond_34

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 35
    instance-of v3, v2, Lmiuix/appcompat/app/Fragment;

    .line 37
    if-eqz v3, :cond_31

    .line 39
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_31

    .line 45
    check-cast v2, Lmiuix/appcompat/app/Fragment;

    .line 47
    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/Fragment;->setBottomExtraInset(I)V

    .line 50
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_12

    .line 53
    :cond_34
    return-void
.end method

.method public setBottomMenuCustomView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setBottomMenuCustomView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setBottomMenuCustomViewTranslationYWithPx(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setBottomMenuCustomViewTranslationYWithPx(I)V

    .line 6
    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setBottomMenuMode(I)V

    .line 6
    return-void
.end method

.method public final setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setCorrectNestedScrollMotionEventEnabled(Z)V

    .line 6
    return-void
.end method

.method public setEndActionMenuEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setEndActionMenuEnabled(Z)V

    .line 6
    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraHorizontalPaddingEnable(Z)V

    .line 6
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraHorizontalPaddingLevel(I)V

    .line 6
    return-void
.end method

.method public setExtraPaddingApplyToContentEnable(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraPaddingApplyToContentEnable(Z)V

    .line 6
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 6
    if-eq v0, p1, :cond_20

    .line 8
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 10
    if-eqz p1, :cond_20

    .line 12
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 14
    if-eqz p1, :cond_20

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_20

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_20

    .line 28
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 30
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 33
    :cond_20
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

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
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    .line 6
    if-eq v0, p1, :cond_1c

    .line 8
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

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
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 29
    :cond_1c
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    .line 6
    return-void
.end method

.method public setThemeRes(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    .line 6
    return-void
.end method

.method public showBottomMenu()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/Fragment;->showBottomMenu(Z)V

    return-void
.end method

.method public showBottomMenu(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->showBottomMenu(Z)V

    return-void
.end method

.method public showBottomMenuCustomView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->showBottomMenuCustomView()V

    .line 6
    return-void
.end method

.method public showImmersionMenu()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public updateOptionsMenuContent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1d

    .line 11
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 13
    if-eqz v0, :cond_1d

    .line 15
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 27
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 30
    :cond_1d
    return-void
.end method
