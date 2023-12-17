.class public abstract Lmiuix/appcompat/app/ActionBar;
.super Landroidx/appcompat/app/a;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/ActionBar$OnScrollListener;,
        Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_SHOW_ACTIONBAR_BLUR:I

.field public static final DISPLAY_SHOW_NAVIGATOR_SWITCH:I

.field public static final DISPLAY_SHOW_SPLIT_ACTIONBAR_BLUR:I

.field public static final DISPLAY_UNBIND_TITLE_UP:I

.field public static final STATE_AUTO:I

.field public static final STATE_COLLAPSE:I

.field public static final STATE_EXPAND:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x9ad96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/ActionBar;->DISPLAY_SHOW_ACTIONBAR_BLUR:I

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/ActionBar;->DISPLAY_SHOW_NAVIGATOR_SWITCH:I

    const v0, 0x96d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/ActionBar;->DISPLAY_SHOW_SPLIT_ACTIONBAR_BLUR:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/ActionBar;->DISPLAY_UNBIND_TITLE_UP:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/ActionBar;->STATE_AUTO:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/ActionBar;->STATE_COLLAPSE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/ActionBar;->STATE_EXPAND:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
.end method

.method public abstract addBadgeOnItemView(I)V
.end method

.method public abstract addBadgeOnItemView(II)V
.end method

.method public abstract addBadgeOnItemView(Landroid/view/MenuItem;)V
.end method

.method public abstract addBadgeOnItemView(Landroid/view/MenuItem;I)V
.end method

.method public abstract addBadgeOnMoreButton()V
.end method

.method public abstract addBadgeOnMoreButton(I)V
.end method

.method public abstract addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/a$d;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/a$d;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/a$d;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
.end method

.method public abstract clearBadgeOnItemView(I)V
.end method

.method public abstract clearBadgeOnItemView(Landroid/view/MenuItem;)V
.end method

.method public abstract clearBadgeOnMoreButton()V
.end method

.method public abstract getActionBarStrategy()Lmiuix/appcompat/app/strategy/IActionBarStrategy;
.end method

.method public abstract getActionBarView()Landroid/view/View;
.end method

.method public abstract getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.end method

.method public abstract getEndView()Landroid/view/View;
.end method

.method public abstract getExpandState()I
.end method

.method public abstract getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.end method

.method public abstract getExpandedHeight()I
.end method

.method public abstract getFragmentAt(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract getFragmentTabCount()I
.end method

.method public abstract getStartView()Landroid/view/View;
.end method

.method public abstract getSubTitleView(I)Landroid/view/View;
.end method

.method public abstract getTitleView(I)Landroid/view/View;
.end method

.method public abstract getViewPagerOffscreenPageLimit()I
.end method

.method public abstract hide(Lmiuix/animation/controller/AnimState;)V
.end method

.method public abstract hide(Z)V
.end method

.method public abstract hide(ZLmiuix/animation/controller/AnimState;)V
.end method

.method public abstract isFragmentViewPagerMode()Z
.end method

.method public abstract isResizable()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract registerCoordinateScrollView(Landroid/view/View;)V
.end method

.method public abstract registerCoordinatedScrollView(Landroid/view/View;)V
.end method

.method public abstract removeActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
.end method

.method public abstract removeAllFragmentTab()V
.end method

.method public abstract removeFragmentTab(Landroidx/appcompat/app/a$d;)V
.end method

.method public abstract removeFragmentTab(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract removeFragmentTab(Ljava/lang/String;)V
.end method

.method public abstract removeFragmentTabAt(I)V
.end method

.method public abstract removeOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
.end method

.method public abstract replaceFragmentTab(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract selectTab(Landroidx/appcompat/app/a$d;Z)V
.end method

.method public abstract setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V
.end method

.method public abstract setActionMenuItemLimit(I)V
.end method

.method public abstract setActionModeAnim(Z)V
.end method

.method public abstract setEndActionMenuItemLimit(I)V
.end method

.method public abstract setEndView(Landroid/view/View;)V
.end method

.method public abstract setExpandState(I)V
.end method

.method public abstract setExpandState(IZ)V
.end method

.method public abstract setExpandState(IZZ)V
.end method

.method public abstract setExpandTabTextAppearance(II)V
.end method

.method public abstract setFragmentActionMenuAt(IZ)V
.end method

.method public abstract setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setProgressBarIndeterminate(Z)V
.end method

.method public abstract setProgressBarIndeterminateVisibility(Z)V
.end method

.method public abstract setProgressBarVisibility(Z)V
.end method

.method public abstract setResizable(Z)V
.end method

.method public abstract setSecondaryTabTextAppearance(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSecondaryTabTextAppearance(III)V
.end method

.method public abstract setStartView(Landroid/view/View;)V
.end method

.method public abstract setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setTabBadgeDisappearOnClick(IZ)V
.end method

.method public abstract setTabBadgeVisibility(IZ)V
.end method

.method public abstract setTabIconWithPosition(IIIIII)V
.end method

.method public abstract setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTabTextAppearance(II)V
.end method

.method public abstract setTabsMode(Z)V
.end method

.method public abstract setTitleClickable(Z)V
.end method

.method public abstract setViewPagerDecor(Landroid/view/View;)V
.end method

.method public abstract setViewPagerDraggable(Z)V
.end method

.method public abstract setViewPagerOffscreenPageLimit(I)V
.end method

.method public abstract show(Lmiuix/animation/controller/AnimState;)V
.end method

.method public abstract show(Z)V
.end method

.method public abstract show(ZLmiuix/animation/controller/AnimState;)V
.end method

.method public abstract showActionBarShadow(Z)V
.end method

.method public abstract showSplitActionBar(ZZ)V
.end method

.method public abstract unregisterCoordinateScrollView(Landroid/view/View;)V
.end method

.method public abstract unregisterCoordinatedScrollView(Landroid/view/View;)V
.end method
