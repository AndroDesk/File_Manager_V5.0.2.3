.class Lmiuix/navigator/NavContentFragmentDelegate;
.super Lmiuix/navigator/NavigatorFragmentDelegate;
.source "NavContentFragmentDelegate.java"


# instance fields
.field private mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

.field private mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    new-instance v0, Lmiuix/navigator/NavContentFragmentDelegate$1;

    invoke-direct {v0, p0, p1}, Lmiuix/navigator/NavContentFragmentDelegate$1;-><init>(Lmiuix/navigator/NavContentFragmentDelegate;Lmiuix/navigator/SubNavigator;)V

    iput-object v0, p2, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/p;

    return-void
.end method

.method public static synthetic access$002(Lmiuix/navigator/NavContentFragmentDelegate;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInSearchActionMode:Z

    return p1
.end method

.method public static synthetic access$102(Lmiuix/navigator/NavContentFragmentDelegate;Lmiuix/view/SearchActionMode$Callback;)Lmiuix/view/SearchActionMode$Callback;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    return-object p1
.end method

.method public static synthetic access$202(Lmiuix/navigator/NavContentFragmentDelegate;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInEditActionMode:Z

    return p1
.end method

.method public static synthetic access$302(Lmiuix/navigator/NavContentFragmentDelegate;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInEditActionMode:Z

    return p1
.end method

.method public static synthetic access$402(Lmiuix/navigator/NavContentFragmentDelegate;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    return-object p1
.end method


# virtual methods
.method public checkThemeLegality()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/navigator/R$attr;->isNavigatorContentTheme:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.Light/Dark.Content theme (or descendant) with this fragment."

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
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    iget-object p1, p1, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "miuix.secondaryContent"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_48

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    instance-of v0, v0, Lmiuix/view/EditActionMode;

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    sget v0, Lmiuix/navigator/R$attr;->navigatorContentStyle:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

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

    invoke-virtual {v0, v1}, Lmiuix/navigator/NavigatorImpl;->removeContentSwitch(Landroid/view/View;)V

    invoke-super {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->onDestroyView()V

    return-void
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->isIsInSearchActionMode()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInsetInitPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    invoke-direct {v0, v1}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    iget-object v1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    if-eqz v1, :cond_1f

    iget v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_21

    :cond_1f
    iget v3, p1, Landroid/graphics/Rect;->left:I

    :goto_21
    add-int/2addr v2, v3

    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iget v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    if-eqz v1, :cond_32

    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_34

    :cond_32
    iget p1, p1, Landroid/graphics/Rect;->right:I

    :goto_34
    add-int/2addr v2, p1

    iput v2, v0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mViewWithContentInset:Landroid/view/View;

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4c

    instance-of v1, p1, Lm0/a0;

    if-eqz v1, :cond_4c

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToScrollingView(Landroid/view/ViewGroup;)V

    goto :goto_4f

    :cond_4c
    invoke-virtual {v0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    :cond_a
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/a;->setDisplayOptions(II)V

    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 7

    if-nez p1, :cond_7

    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Lmiuix/view/SearchActionMode$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_31

    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    if-nez v0, :cond_19

    new-instance v0, Lmiuix/navigator/NavContentFragmentDelegate$2;

    invoke-direct {v0, p0, p1}, Lmiuix/navigator/NavContentFragmentDelegate$2;-><init>(Lmiuix/navigator/NavContentFragmentDelegate;Landroid/view/ActionMode$Callback;)V

    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    :cond_19
    iput-boolean v3, p0, Lmiuix/appcompat/app/FragmentDelegate;->mIsInSearchActionMode:Z

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/navigator/NavigatorImpl;->hideBottomTab(Z)V

    iget-object p1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_30

    iput-object v1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mSearchActionModeWrapper:Lmiuix/view/SearchActionMode$Callback;

    :cond_30
    return-object p1

    :cond_31
    iget-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_59

    new-instance v0, Lmiuix/navigator/NavContentFragmentDelegate$3;

    invoke-direct {v0, p0, p1}, Lmiuix/navigator/NavContentFragmentDelegate$3;-><init>(Lmiuix/navigator/NavContentFragmentDelegate;Landroid/view/ActionMode$Callback;)V

    iput-object v0, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    invoke-super {p0, v0}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentDelegate;->getNavigator()Lmiuix/navigator/SubNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getBottomMenuMode()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_52

    move v2, v3

    :cond_52
    invoke-virtual {v0, v2}, Lmiuix/navigator/NavigatorImpl;->hideBottomTab(Z)V

    goto :goto_58

    :cond_56
    iput-object v1, p0, Lmiuix/navigator/NavContentFragmentDelegate;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    :goto_58
    return-object p1

    :cond_59
    invoke-super {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
