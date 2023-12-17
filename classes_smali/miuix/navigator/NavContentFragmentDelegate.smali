.class Lmiuix/navigator/NavContentFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavContentFragmentDelegate.java"


# instance fields
.field private mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

.field private mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;


# direct methods
.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 7
    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    .line 9
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object p2

    .line 13
    new-instance v0, Lmiuix/navigator/NavContentFragmentDelegate$1;

    .line 15
    invoke-direct {v0, p0, p1}, Lmiuix/navigator/NavContentFragmentDelegate$1;-><init>(Lmiuix/navigator/NavContentFragmentDelegate;Lmiuix/navigator/SubNavigator;)V

    .line 18
    iput-object v0, p2, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/p;

    .line 20
    return-void
.end method

.method public static synthetic access$002(Lmiuix/navigator/NavContentFragmentDelegate;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInSearchActionMode:Z

    .line 3
    return p1
.end method

.method public static synthetic access$102(Lmiuix/navigator/NavContentFragmentDelegate;Lmiuix/view/SearchActionMode$Callback;)Lmiuix/view/SearchActionMode$Callback;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    .line 3
    return-object p1
.end method

.method public static synthetic access$202(Lmiuix/navigator/NavContentFragmentDelegate;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInEditActionMode:Z

    .line 3
    return p1
.end method

.method public static synthetic access$302(Lmiuix/navigator/NavContentFragmentDelegate;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInEditActionMode:Z

    .line 3
    return p1
.end method

.method public static synthetic access$402(Lmiuix/navigator/NavContentFragmentDelegate;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 3
    return-object p1
.end method


# virtual methods
.method public checkThemeLegality()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/navigator/R$attr;->isNavigatorContentTheme:I

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
    const-string v1, "You need to use a Theme.Light/Dark.Content theme (or descendant) with this fragment."

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
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 34
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 37
    move-result-object p1

    .line 38
    const-string v0, "miuix.secondaryContent"

    .line 40
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 43
    move-result-object p1

    .line 44
    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    .line 46
    if-eqz v0, :cond_48

    .line 48
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 50
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 57
    move-result-object v0

    .line 58
    instance-of v0, v0, Lmiuix/view/EditActionMode;

    .line 60
    if-eqz v0, :cond_48

    .line 62
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 73
    :cond_48
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
    sget v0, Lmiuix/navigator/R$attr;->navigatorContentStyle:I

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
    invoke-virtual {v0, v1}, Lmiuix/navigator/NavigatorImpl;->removeContentSwitch(Landroid/view/View;)V

    .line 22
    invoke-super {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->onDestroyView()V

    .line 25
    return-void
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->isIsInSearchActionMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4f

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 16
    invoke-direct {v0, v1}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 21
    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 24
    move-result v1

    .line 25
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 27
    if-eqz v1, :cond_1f

    .line 29
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 34
    :goto_21
    add-int/2addr v2, v3

    .line 35
    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 37
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 39
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 41
    add-int/2addr v2, v3

    .line 42
    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 44
    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 46
    if-eqz v1, :cond_32

    .line 48
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 53
    :goto_34
    add-int/2addr v2, p1

    .line 54
    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 56
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 58
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    .line 63
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 65
    if-eqz v1, :cond_4c

    .line 67
    instance-of v1, p1, Lm0/a0;

    .line 69
    if-eqz v1, :cond_4c

    .line 71
    check-cast p1, Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToScrollingView(Landroid/view/ViewGroup;)V

    .line 76
    goto :goto_4f

    .line 77
    :cond_4c
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

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
    const/16 v1, 0x2000

    .line 13
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(II)V

    .line 16
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 7

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_31

    .line 15
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    .line 17
    if-nez v0, :cond_19

    .line 19
    new-instance v0, Lmiuix/navigator/NavContentFragmentDelegate$2;

    .line 21
    invoke-direct {v0, p0, p1}, Lmiuix/navigator/NavContentFragmentDelegate$2;-><init>(Lmiuix/navigator/NavContentFragmentDelegate;Landroid/view/ActionMode$Callback;)V

    .line 24
    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    .line 26
    :cond_19
    iput-boolean v3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInSearchActionMode:Z

    .line 28
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorImpl;->hideBottomTab(Z)V

    .line 39
    iget-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    .line 41
    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_30

    .line 47
    iput-object v1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    .line 49
    :cond_30
    return-object p1

    .line 50
    :cond_31
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 52
    if-nez v0, :cond_59

    .line 54
    new-instance v0, Lmiuix/navigator/NavContentFragmentDelegate$3;

    .line 56
    invoke-direct {v0, p0, p1}, Lmiuix/navigator/NavContentFragmentDelegate$3;-><init>(Lmiuix/navigator/NavContentFragmentDelegate;Landroid/view/ActionMode$Callback;)V

    .line 59
    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 61
    invoke-super {p0, v0}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_56

    .line 67
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getBottomMenuMode()I

    .line 78
    move-result v1

    .line 79
    const/4 v4, 0x2

    .line 80
    if-ne v1, v4, :cond_52

    .line 82
    move v2, v3

    .line 83
    :cond_52
    invoke-virtual {v0, v2}, Lmiuix/navigator/NavigatorImpl;->hideBottomTab(Z)V

    .line 86
    goto :goto_58

    .line 87
    :cond_56
    iput-object v1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 89
    :goto_58
    return-object p1

    .line 90
    :cond_59
    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method
