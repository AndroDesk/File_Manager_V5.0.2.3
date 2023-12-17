.class abstract Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    }
.end annotation


# static fields
.field public static final COLLAPSE_LAYOUT_MAX_TRANSY:I = 0x14

.field public static final INNER_STATE_COLLAPSE:I = 0x0

.field public static final INNER_STATE_EXPAND:I = 0x1

.field public static final INNER_STATE_RESIZING:I = 0x2

.field public static final MAX_ACTION_MENU_ITEM_COUNT_UNSET:I = -0x80000000


# instance fields
.field public mActionBarTransitionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field public mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

.field public mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

.field public mBottomMenuMode:I

.field public mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

.field public mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field public mCollapseTitleColorTransitEnable:Z

.field public mEndActionMenuEnable:Z

.field public mExpandState:I

.field public mExpandStateBeforeResizing:I

.field public mExpandStateOnLayout:I

.field public mExpandTitleColorTransitEnable:Z

.field public mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

.field public mInnerExpandState:I

.field public mIsInWideMode:Z

.field public mLastProcess:F

.field public mMaxActionMenuItemCount:I

.field public mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

.field public mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

.field public mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

.field public mPendingInset:Landroid/graphics/Rect;

.field private mResizable:Z

.field public mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

.field public mSplitActionBarEnable:Z

.field public mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

.field public mSplitWhenNarrow:Z

.field public mSubtitlePaddingV:I

.field public mTitleClickable:Z

.field public mTitleMaxHeight:I

.field public mTitleMinHeight:I

.field public mTitlePaddingV:I

.field public mUserExpandState:I

.field public mUserSetExpandState:Z

.field public mUserSubTitleClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 5
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 6
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 7
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 8
    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 9
    iput-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    const/high16 v1, -0x80000000

    .line 12
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 14
    new-instance v2, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 16
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_collapse_padding_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitlePaddingV:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_subtitle_collapse_padding_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSubtitlePaddingV:I

    .line 20
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v0, [F

    fill-array-data v3, :array_f4

    const/4 v4, -0x2

    .line 21
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 22
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v0, [F

    fill-array-data v3, :array_fc

    .line 23
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v3, p3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v5, v3, v1

    .line 24
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mShowProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 25
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v0, [F

    fill-array-data v3, :array_104

    .line 26
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 27
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v0, [F

    fill-array-data v3, :array_10c

    .line 28
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v3, p3, [Lmiuix/animation/listener/TransitionListener;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mAnimConfigListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v5, v3, v1

    .line 29
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mHideProcessConfig:Lmiuix/animation/base/AnimConfig;

    .line 30
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v0, [F

    fill-array-data v3, :array_114

    .line 31
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 32
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [F

    fill-array-data v0, :array_11c

    .line 33
    invoke-virtual {v2, v4, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 34
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    const v2, 0x10102ce

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 35
    sget p2, Lmiuix/appcompat/R$styleable;->ActionBar_expandState:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 36
    sget v0, Lmiuix/appcompat/R$styleable;->ActionBar_resizable:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 37
    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_titleClickable:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 40
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 41
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_ef

    :cond_e4
    if-nez p2, :cond_eb

    .line 42
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 43
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_ef

    .line 44
    :cond_eb
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 45
    iput p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 46
    :goto_ef
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 47
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    return-void

    :array_f4
    .array-data 4
        0x3f800000  # 1.0f
        0x3e99999a  # 0.3f
    .end array-data

    :array_fc
    .array-data 4
        0x3f800000  # 1.0f
        0x3e99999a  # 0.3f
    .end array-data

    :array_104
    .array-data 4
        0x3f800000  # 1.0f
        0x3e19999a  # 0.15f
    .end array-data

    :array_10c
    .array-data 4
        0x3f800000  # 1.0f
        0x3e19999a  # 0.15f
    .end array-data

    :array_114
    .array-data 4
        0x3f800000  # 1.0f
        0x3f19999a  # 0.6f
    .end array-data

    :array_11c
    .array-data 4
        0x3f800000  # 1.0f
        0x3f19999a  # 0.6f
    .end array-data
.end method

.method private setTitleMaxHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method private setTitleMinHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v0

    .line 8
    if-eq p1, v0, :cond_2e

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    if-nez p1, :cond_12

    .line 16
    sget v1, Lmiuix/appcompat/R$anim;->action_bar_fade_in:I

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    sget v1, Lmiuix/appcompat/R$anim;->action_bar_fade_out:I

    .line 21
    :goto_14
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 33
    if-eqz v1, :cond_2e

    .line 35
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 37
    if-eqz v1, :cond_2e

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_2e
    return-void
.end method

.method public bindActionBarTransitionListeners(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/ActionBarTransitionListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    .line 3
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 9
    :cond_8
    return-void
.end method

.method public getActionBarStyle()I
    .registers 2

    const v0, 0x10102ce

    return v0
.end method

.method public getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    return-object v0
.end method

.method public getAnimatedVisibility()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public abstract getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.end method

.method public getExpandState()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 3
    return v0
.end method

.method public abstract getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.end method

.method public getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    return-object v0
.end method

.method public abstract getSubTitleView(I)Landroid/view/View;
.end method

.method public abstract getTitleView(I)Landroid/view/View;
.end method

.method public hideOverflowMenu()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_c
    return v1
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowReserved()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public isResizable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 3
    return v0
.end method

.method public isUserSetExpandState()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 3
    return v0
.end method

.method public measureChildView(Landroid/view/View;III)I
    .registers 6

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result p1

    .line 14
    sub-int/2addr p2, p1

    .line 15
    sub-int/2addr p2, p4

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onAnimatedExpandStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 6
    if-eqz v0, :cond_18

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 16
    sget v1, Lmiuix/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    :cond_1f
    return-void
.end method

.method public onExpandStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 7

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 9

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public positionChild(Landroid/view/View;III)I
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result p1

    return p1
.end method

.method public positionChild(Landroid/view/View;IIIZ)I
    .registers 14

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 4
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    if-nez p5, :cond_13

    .line 5
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    sub-int/2addr p3, v1

    div-int/lit8 p4, p3, 0x2

    :cond_13
    move v5, p4

    add-int v6, p2, v0

    add-int v7, v5, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 6
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    return v0
.end method

.method public positionChildInverse(Landroid/view/View;III)I
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result p3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result p4

    .line 9
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 11
    sub-int/2addr v0, p4

    .line 12
    div-int/lit8 v4, v0, 0x2

    .line 14
    sub-int v3, p2, p3

    .line 16
    add-int v6, v4, p4

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move v5, p2

    .line 21
    invoke-static/range {v1 .. v6}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 24
    return p3
.end method

.method public positionChildWithOffset(Landroid/view/View;IIIZI)I
    .registers 15

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr p4, v1

    .line 10
    div-int/lit8 p4, p4, 0x2

    .line 12
    add-int/2addr p4, p3

    .line 13
    if-nez p5, :cond_13

    .line 15
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 17
    sub-int/2addr p3, v1

    .line 18
    div-int/lit8 p4, p3, 0x2

    .line 20
    :cond_13
    move v5, p4

    .line 21
    add-int v4, p2, p6

    .line 23
    add-int/2addr p2, v0

    .line 24
    add-int v6, p2, p6

    .line 26
    add-int v7, v5, v1

    .line 28
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    invoke-static/range {v2 .. v7}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 33
    add-int/2addr v0, p6

    .line 34
    return v0
.end method

.method public postShowOverflowMenu()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/app/widget/a;-><init>(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
.end method

.method public abstract refreshBottomMenu()V
.end method

.method public setActionMenuItemLimit(I)V
    .registers 4

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 5
    if-eqz v0, :cond_d

    .line 7
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 9
    if-nez v1, :cond_d

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    .line 14
    :cond_d
    return-void
.end method

.method public setBottomMenuMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    .line 3
    return-void
.end method

.method public setExpandState(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public setExpandState(IZZ)V
    .registers 5

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    if-nez v0, :cond_6

    if-eqz p3, :cond_2e

    :cond_6
    iget p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eq p3, p1, :cond_2e

    if-eqz p2, :cond_10

    .line 3
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onAnimatedExpandStateChanged(II)V

    goto :goto_2e

    :cond_10
    const/4 p2, 0x2

    if-ne p1, p2, :cond_17

    .line 4
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateBeforeResizing:I

    .line 5
    :cond_17
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-nez p1, :cond_1f

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    goto :goto_24

    :cond_1f
    const/4 p2, 0x1

    if-ne p1, p2, :cond_24

    .line 7
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    .line 8
    :cond_24
    :goto_24
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onExpandStateChanged(II)V

    .line 9
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandState:I

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mExpandStateOnLayout:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setExpandStateByUser(I)V
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSetExpandState:Z

    .line 13
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserExpandState:I

    .line 15
    :goto_e
    return-void
.end method

.method public setPendingInset(Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 6
    if-eqz v0, :cond_13

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 10
    if-eqz v0, :cond_13

    .line 12
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 14
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 16
    if-eq v0, v1, :cond_13

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 23
    if-nez v1, :cond_1f

    .line 25
    new-instance v1, Landroid/graphics/Rect;

    .line 27
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 32
    :cond_1f
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->refreshBottomMenu()V

    .line 42
    :cond_29
    return-void
.end method

.method public setResizable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mResizable:Z

    .line 3
    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    return-void
.end method

.method public setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 3
    return-void
.end method

.method public setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public setTitleClickable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleClickable:Z

    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_9

    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_9
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method
