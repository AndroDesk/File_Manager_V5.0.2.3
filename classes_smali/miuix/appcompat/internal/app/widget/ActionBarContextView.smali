.class public Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;,
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;
    }
.end annotation


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final DAMPING:F = 0.9f

.field private static final DELAY_DURATION_50:I = 0x32

.field private static final STIFFNESS_HIGH:F = 986.96f

.field private static final STIFFNESS_LOW:F = 322.27f

.field private static final TYPE_NON_TOUCH:I = 0x1

.field private static final TYPE_TOUCH:I


# instance fields
.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mActionMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private mActionModeBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimateStart:Z

.field private mAnimateToVisible:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationMode:I

.field private mAnimationProgress:F

.field private mBackgroundViewApplyBlur:Z

.field private mButton1:Landroid/widget/Button;

.field private mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mButton2:Landroid/widget/Button;

.field private mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseTotalHeight:I

.field private mContentInset:I

.field private mExpandTitleStyleRes:I

.field private mExpandTitleView:Landroid/widget/TextView;

.field private mExpandTotalHeight:I

.field private mIsAnimating:Z

.field private mMainContainer:Landroid/view/View;

.field private mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mMovableMainContainer:Landroid/widget/FrameLayout;

.field private mNonTouchScrolling:Z

.field private mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mRequestAnimation:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStartWithAnim:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTouchScrolling:Z

.field private mTransitionListener:Lmiuix/animation/listener/TransitionListener;

.field private mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010394

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v7, 0x1

    .line 4
    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mBackgroundViewApplyBlur:Z

    .line 6
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    .line 7
    new-instance v1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 8
    new-instance v1, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 9
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 11
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 13
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 14
    sget v2, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 19
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 22
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 23
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 26
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_expandTitleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    .line 27
    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_minHeight:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 28
    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/high16 v0, 0x1040000

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x1020019

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 31
    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_action_mode_select_all:I

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x102001a

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 33
    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_actionModeAnim:I

    invoke-virtual {v8, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    .line 34
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->lambda$makeContextViewsShowHideWithAnimation$0(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    .line 3
    return p1
.end method

.method public static synthetic access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mIsAnimating:Z

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 3
    return p1
.end method

.method public static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 3
    return p0
.end method

.method private addSplitMenuView()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 23
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    if-eqz v0, :cond_32

    .line 39
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 46
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 48
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 51
    :cond_32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 53
    if-eqz v0, :cond_5c

    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 57
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isSupportBlur()Z

    .line 60
    move-result v1

    .line 61
    invoke-interface {v0, v1}, Lmiuix/view/BlurableWidget;->setSupportBlur(Z)V

    .line 64
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 66
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 68
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 71
    move-result v1

    .line 72
    invoke-interface {v0, v1}, Lmiuix/view/BlurableWidget;->setEnableBlur(Z)V

    .line 75
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 77
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 79
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isEnableBlur()Z

    .line 82
    move-result v1

    .line 83
    invoke-interface {v0, v1}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 86
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 88
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mBackgroundViewApplyBlur:Z

    .line 90
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->updateBackground(Z)V

    .line 93
    :cond_5c
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mBottomMenuMode:I

    .line 95
    const/4 v1, 0x3

    .line 96
    const/4 v3, 0x0

    .line 97
    if-ne v0, v1, :cond_64

    .line 99
    move v0, v2

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    move v0, v3

    .line 102
    :goto_65
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    const/4 v4, -0x1

    .line 105
    const/4 v5, -0x2

    .line 106
    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    if-eqz v0, :cond_7c

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v2

    .line 117
    const/high16 v4, 0x41800000  # 16.0f

    .line 119
    invoke-static {v2, v4}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    .line 122
    move-result v2

    .line 123
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 125
    :cond_7c
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mPendingInset:Landroid/graphics/Rect;

    .line 127
    if-eqz v2, :cond_96

    .line 129
    if-eqz v0, :cond_8f

    .line 131
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 133
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 135
    add-int/2addr v4, v2

    .line 136
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 138
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 140
    invoke-static {v2, v3}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    .line 143
    goto :goto_96

    .line 144
    :cond_8f
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 146
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 148
    invoke-static {v3, v2}, Lmiuix/internal/util/ViewUtils;->resetPaddingBottom(Landroid/view/View;I)V

    .line 151
    :cond_96
    :goto_96
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 153
    instance-of v3, v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 155
    if-eqz v3, :cond_a1

    .line 157
    check-cast v2, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 159
    invoke-virtual {v2, v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->setSuspendEnabled(Z)V

    .line 162
    :cond_a1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 164
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 171
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 173
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 179
    return-void
.end method

.method private animateLayoutWithProcess(F)V
    .registers 8

    .line 1
    const/high16 v0, 0x40400000  # 3.0f

    .line 3
    mul-float/2addr p1, v0

    .line 4
    const/high16 v0, 0x3f800000  # 1.0f

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 9
    move-result p1

    .line 10
    sub-float p1, v0, p1

    .line 12
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 14
    const/16 v2, 0x14

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x2

    .line 19
    if-ne v1, v5, :cond_2f

    .line 21
    cmpl-float v1, p1, v3

    .line 23
    if-lez v1, :cond_20

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 27
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 29
    invoke-virtual {v0, v3, v4, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 35
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 37
    invoke-virtual {v1, v0, v4, v4, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 40
    :goto_27
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 42
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 44
    invoke-virtual {v0, p1, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 47
    goto :goto_51

    .line 48
    :cond_2f
    const/4 p1, 0x1

    .line 49
    if-ne v1, p1, :cond_41

    .line 51
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 53
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    .line 55
    invoke-virtual {p1, v3, v4, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 58
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 60
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 62
    invoke-virtual {p1, v0, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 65
    goto :goto_51

    .line 66
    :cond_41
    if-nez v1, :cond_51

    .line 68
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 70
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    .line 72
    invoke-virtual {p1, v0, v4, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 75
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 77
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 79
    invoke-virtual {p1, v3, v4, v4, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onAllAnimationsEnd()V

    return-void
.end method

.method public static synthetic c(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->lambda$makeContextViewsShowHideWithAnimation$1(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    return-void
.end method

.method private canTitleBeShown()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v2, :cond_24

    .line 31
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_28

    .line 37
    :cond_24
    cmpg-float v0, v0, v1

    .line 39
    if-gtz v0, :cond_2a

    .line 41
    :cond_28
    move v0, v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v0, 0x0

    .line 44
    :goto_2b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lmiuix/appcompat/internal/view/ActionBarPolicy;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ActionBarPolicy;->isTitleEnableEllipsis()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3c

    .line 58
    if-nez v0, :cond_3c

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v3, v0

    .line 62
    :goto_3d
    return v3
.end method

.method private clearBackground()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 7
    if-eqz v0, :cond_10

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 11
    if-eqz v0, :cond_10

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackground(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method private getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 3
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 5
    invoke-direct {v0, p1, v1, p4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 8
    invoke-virtual {v0, p3}, Lmiuix/animation/physics/DynamicAnimation;->setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 11
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 18
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 21
    move-result-object p1

    .line 22
    const p2, 0x3f666666  # 0.9f

    .line 25
    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 28
    const/high16 p1, 0x3b800000  # 0.00390625f

    .line 30
    invoke-virtual {v0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 33
    return-object v0
.end method

.method private static synthetic lambda$makeContextViewsShowHideWithAnimation$0(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->countDown()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$makeContextViewsShowHideWithAnimation$1(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->countDown()V

    .line 4
    return-void
.end method

.method private onAllAnimationsEnd()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    .line 7
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 9
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    .line 12
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v1, v2, :cond_13

    .line 17
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->killMode()V

    .line 20
    :cond_13
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 25
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 27
    const/16 v2, 0x8

    .line 29
    if-eqz v1, :cond_20

    .line 31
    move v1, v0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v1, v2

    .line 34
    :goto_21
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 39
    if-eqz v1, :cond_34

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 43
    if-eqz v1, :cond_34

    .line 45
    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 47
    if-eqz v3, :cond_31

    .line 49
    move v2, v0

    .line 50
    :cond_31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_34
    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 56
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 58
    aput-object v2, v1, v0

    .line 60
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method private onFinishStartActionMode(Z)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-eqz p1, :cond_a

    .line 9
    move v2, v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v2, v1

    .line 12
    :goto_b
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    .line 15
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 17
    if-eqz v2, :cond_1d

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 21
    if-eqz v2, :cond_1d

    .line 23
    if-eqz p1, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v0, v1

    .line 27
    :goto_1a
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_1d
    return-void
.end method

.method private onLayoutCollapseViews(IIII)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    move-result v2

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    move-result v6

    .line 11
    sub-int/2addr p4, p2

    .line 12
    sub-int/2addr p4, v6

    .line 13
    div-int/lit8 p4, p4, 0x2

    .line 15
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 20
    move-result p2

    .line 21
    const/16 v0, 0x8

    .line 23
    if-eq p2, v0, :cond_2d

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    move-result p2

    .line 31
    add-int v4, p2, v2

    .line 33
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    move-result p2

    .line 39
    add-int v5, p2, p4

    .line 41
    move-object v0, p0

    .line 42
    move v3, p4

    .line 43
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 46
    :cond_2d
    sub-int/2addr p3, p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 50
    move-result p1

    .line 51
    sub-int/2addr p3, p1

    .line 52
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 54
    if-eqz p1, :cond_42

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    move-result-object p1

    .line 60
    if-ne p1, p0, :cond_42

    .line 62
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 64
    invoke-virtual {p0, p1, p3, p4, v6}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 67
    :cond_42
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    .line 69
    const/4 p2, 0x1

    .line 70
    if-eqz p1, :cond_50

    .line 72
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    .line 74
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHideWithAnimation(Z)V

    .line 77
    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    .line 80
    goto :goto_67

    .line 81
    :cond_50
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 83
    if-eqz p1, :cond_67

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 95
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 97
    invoke-virtual {p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 100
    move-result p3

    .line 101
    invoke-virtual {p1, p3, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    .line 104
    :cond_67
    :goto_67
    return-void
.end method

.method private resetBackground()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 8
    if-eqz v0, :cond_11

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 12
    if-eqz v0, :cond_11

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackground(Z)V

    .line 18
    :cond_11
    return-void
.end method

.method private setButtonContentDescription(II)V
    .registers 4

    .line 1
    const v0, 0x1020019

    .line 4
    if-ne p1, v0, :cond_8

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 8
    goto :goto_11

    .line 9
    :cond_8
    const v0, 0x102001a

    .line 12
    if-ne p1, v0, :cond_10

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    if-nez p1, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_cancel:I

    .line 23
    if-eq v0, p2, :cond_8d

    .line 25
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_cancel_light:I

    .line 27
    if-eq v0, p2, :cond_8d

    .line 29
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_cancel_dark:I

    .line 31
    if-ne v0, p2, :cond_22

    .line 33
    goto/16 :goto_8d

    .line 35
    :cond_22
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_confirm:I

    .line 37
    if-eq v0, p2, :cond_7f

    .line 39
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_confirm_light:I

    .line 41
    if-eq v0, p2, :cond_7f

    .line 43
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_confirm_dark:I

    .line 45
    if-ne v0, p2, :cond_2f

    .line 47
    goto :goto_7f

    .line 48
    :cond_2f
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_select_all:I

    .line 50
    if-eq v0, p2, :cond_71

    .line 52
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_select_all_light:I

    .line 54
    if-eq v0, p2, :cond_71

    .line 56
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_select_all_dark:I

    .line 58
    if-ne v0, p2, :cond_3c

    .line 60
    goto :goto_71

    .line 61
    :cond_3c
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all:I

    .line 63
    if-eq v0, p2, :cond_63

    .line 65
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_deselect_all_light:I

    .line 67
    if-eq v0, p2, :cond_63

    .line 69
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_deselect_all_dark:I

    .line 71
    if-ne v0, p2, :cond_49

    .line 73
    goto :goto_63

    .line 74
    :cond_49
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_delete:I

    .line 76
    if-eq v0, p2, :cond_55

    .line 78
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_delete_light:I

    .line 80
    if-eq v0, p2, :cond_55

    .line 82
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_action_icon_immersion_delete_dark:I

    .line 84
    if-ne v0, p2, :cond_9a

    .line 86
    :cond_55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object p2

    .line 90
    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_delete_description:I

    .line 92
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    goto :goto_9a

    .line 100
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object p2

    .line 104
    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_deselect_all_description:I

    .line 106
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    goto :goto_9a

    .line 114
    :cond_71
    :goto_71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object p2

    .line 118
    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_select_all_description:I

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    goto :goto_9a

    .line 128
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object p2

    .line 132
    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_confirm_description:I

    .line 134
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    goto :goto_9a

    .line 142
    :cond_8d
    :goto_8d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object p2

    .line 146
    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_cancel_description:I

    .line 148
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 155
    :cond_9a
    :goto_9a
    return-void
.end method

.method private setSplitAnimating(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setAnimating(Z)V

    .line 14
    :cond_d
    return-void
.end method

.method private stopSplitMenuAnimation()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_b

    .line 10
    move v0, v2

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 15
    move-result v0

    .line 16
    :goto_f
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 18
    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 21
    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 23
    int-to-double v4, v0

    .line 24
    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Landroid/view/View;

    .line 31
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 33
    aput-object v3, v1, v2

    .line 35
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 46
    :cond_2d
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 6
    if-nez v0, :cond_e

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 4
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_16

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    .line 6
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    goto :goto_25

    .line 7
    :cond_16
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHide(Z)V

    goto :goto_25

    .line 8
    :cond_1a
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    if-eqz p1, :cond_22

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHideWithAnimation(Z)V

    goto :goto_25

    .line 10
    :cond_22
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHide(Z)V

    :goto_25
    return-void
.end method

.method public cancelAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 11
    :cond_a
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->stopSplitMenuAnimation()V

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    .line 18
    return-void
.end method

.method public closeMode()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->endAnimation()V

    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    .line 7
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->dismissPopupMenus()V

    .line 4
    return-void
.end method

.method public endAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->skipToEnd()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 11
    :cond_a
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->stopSplitMenuAnimation()V

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    .line 18
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-object v0
.end method

.method public getActionBarStyle()I
    .registers 2

    const v0, 0x1010394

    return v0
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getAnimationProgress()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    .line 3
    return v0
.end method

.method public getCollapseTitle()Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollapsedHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 3
    return v0
.end method

.method public bridge synthetic getExpandState()I
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTotalHeight:I

    .line 3
    return v0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSubTitleView(I)Landroid/view/View;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitleView(I)Landroid/view/View;
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 13
    return-object p1
.end method

.method public getViewHeight()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getCollapsedHeight()I

    .line 4
    move-result v0

    .line 5
    return v0
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

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->killMode()V

    .line 11
    :cond_a
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 22
    if-ne v0, v1, :cond_1c

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 29
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 36
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 44
    if-eqz v0, :cond_31

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/View;

    .line 56
    :goto_37
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 58
    if-eqz v1, :cond_88

    .line 60
    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v2

    .line 66
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 68
    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_responsive_action_menu_layout:I

    .line 70
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_menu_item_layout:I

    .line 72
    invoke-direct {v1, v2, v0, v3, v4}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;II)V

    .line 75
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 81
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 83
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setActionEditMode(Z)V

    .line 86
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMaxActionMenuItemCount:I

    .line 88
    const/high16 v1, -0x80000000

    .line 90
    if-eq v0, v1, :cond_60

    .line 92
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 94
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setItemLimit(I)V

    .line 97
    :cond_60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    const/4 v1, -0x2

    .line 100
    const/4 v2, -0x1

    .line 101
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 106
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 109
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 111
    if-nez p1, :cond_84

    .line 113
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 115
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 121
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 129
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    goto :goto_87

    .line 133
    :cond_84
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addSplitMenuView()V

    .line 136
    :goto_87
    return-void

    .line 137
    :cond_88
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 140
    move-result-object v1

    .line 141
    instance-of v1, v1, Landroid/view/View;

    .line 143
    if-eqz v1, :cond_97

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/view/View;

    .line 151
    goto :goto_37

    .line 152
    :cond_97
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 154
    const-string v0, "ActionBarOverlayLayout not found"

    .line 156
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p1
.end method

.method public initTitle()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 3
    const/high16 v1, 0x3f800000  # 1.0f

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_f1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object v0

    .line 17
    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_title_item:I

    .line 19
    invoke-virtual {v0, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 27
    const v4, 0x1020019

    .line 30
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 40
    const v4, 0x102001a

    .line 43
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/Button;

    .line 49
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 53
    const v4, 0x3f19999a  # 0.6f

    .line 56
    if-eqz v0, :cond_7a

    .line 58
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    .line 60
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-array v0, v2, [Landroid/view/View;

    .line 65
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 67
    aput-object v5, v0, v3

    .line 69
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 76
    move-result-object v0

    .line 77
    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 79
    invoke-interface {v0, v1, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 82
    move-result-object v0

    .line 83
    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 85
    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 88
    move-result-object v0

    .line 89
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 91
    new-array v6, v3, [Lmiuix/animation/base/AnimConfig;

    .line 93
    invoke-interface {v0, v5, v6}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 96
    new-array v0, v2, [Landroid/view/View;

    .line 98
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 100
    aput-object v5, v0, v3

    .line 102
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 109
    move-result-object v0

    .line 110
    sget-object v5, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 112
    invoke-interface {v0, v5}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 115
    move-result-object v0

    .line 116
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    .line 118
    new-array v6, v3, [Lmiuix/animation/base/AnimConfig;

    .line 120
    invoke-interface {v0, v5, v6}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 123
    :cond_7a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 125
    if-eqz v0, :cond_bf

    .line 127
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    .line 129
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-array v0, v2, [Landroid/view/View;

    .line 134
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 136
    aput-object v5, v0, v3

    .line 138
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 141
    move-result-object v0

    .line 142
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 145
    move-result-object v0

    .line 146
    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 148
    invoke-interface {v0, v1, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 151
    move-result-object v0

    .line 152
    new-array v5, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 154
    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 157
    move-result-object v0

    .line 158
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 160
    new-array v5, v3, [Lmiuix/animation/base/AnimConfig;

    .line 162
    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 165
    new-array v0, v2, [Landroid/view/View;

    .line 167
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 169
    aput-object v4, v0, v3

    .line 171
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 178
    move-result-object v0

    .line 179
    sget-object v4, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 181
    invoke-interface {v0, v4}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 184
    move-result-object v0

    .line 185
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 187
    new-array v5, v3, [Lmiuix/animation/base/AnimConfig;

    .line 189
    invoke-interface {v0, v4, v5}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 192
    :cond_bf
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 194
    const v4, 0x1020016

    .line 197
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroid/widget/TextView;

    .line 203
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 205
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 207
    if-eqz v4, :cond_d9

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    move-result-object v4

    .line 213
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 215
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 218
    :cond_d9
    new-instance v0, Landroid/widget/TextView;

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 223
    move-result-object v4

    .line 224
    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 227
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 229
    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    .line 231
    if-eqz v4, :cond_f1

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 236
    move-result-object v4

    .line 237
    iget v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    .line 239
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 242
    :cond_f1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 244
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 246
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 251
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 253
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 258
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 262
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 264
    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    move-result v0

    .line 273
    xor-int/2addr v0, v2

    .line 274
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 276
    const/16 v5, 0x8

    .line 278
    if-eqz v0, :cond_119

    .line 280
    move v6, v3

    .line 281
    goto :goto_11a

    .line 282
    :cond_119
    move v6, v5

    .line 283
    :goto_11a
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 288
    if-eqz v0, :cond_122

    .line 290
    move v5, v3

    .line 291
    :cond_122
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 299
    move-result-object v0

    .line 300
    if-nez v0, :cond_132

    .line 302
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 304
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    :cond_132
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 312
    move-result-object v0

    .line 313
    if-nez v0, :cond_141

    .line 315
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 317
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    .line 319
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 322
    :cond_141
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 327
    move-result-object v0

    .line 328
    if-nez v0, :cond_14e

    .line 330
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 332
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    :cond_14e
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 337
    const/4 v4, 0x0

    .line 338
    if-nez v0, :cond_15e

    .line 340
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 342
    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 345
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 347
    invoke-virtual {v0, v4, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 350
    goto :goto_16c

    .line 351
    :cond_15e
    if-ne v0, v2, :cond_16c

    .line 353
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 355
    const/16 v2, 0x14

    .line 357
    invoke-virtual {v0, v4, v3, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 360
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 362
    invoke-virtual {v0, v1, v3, v3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    .line 365
    :cond_16c
    :goto_16c
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mIsAnimating:Z

    .line 3
    return v0
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

.method public bridge synthetic isOverflowReserved()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isResizable()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isTitleOptional()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    .line 3
    return v0
.end method

.method public bridge synthetic isUserSetExpandState()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isUserSetExpandState()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public killMode()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 16
    if-eqz v0, :cond_26

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onWillRemoved()V

    .line 25
    :cond_18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 27
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 34
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 36
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 39
    :cond_26
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 41
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method

.method public makeContextViewsShowHide(Z)V
    .registers 8

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_7

    .line 6
    move v2, v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move v2, v1

    .line 9
    :goto_8
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 12
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 14
    if-nez v2, :cond_13

    .line 16
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 28
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 30
    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 36
    if-eqz p1, :cond_27

    .line 38
    move v5, v1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    int-to-float v5, v3

    .line 41
    :goto_28
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 44
    if-eqz p1, :cond_2e

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v3, 0x0

    .line 48
    :goto_2f
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottomByBottomMenu(I)V

    .line 51
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 53
    if-eqz p1, :cond_37

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v0, v1

    .line 57
    :goto_38
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 60
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    .line 63
    return-void
.end method

.method public makeContextViewsShowHideWithAnimation(Z)V
    .registers 20

    .line 1
    move-object/from16 v8, p0

    .line 3
    move/from16 v2, p1

    .line 5
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 7
    if-ne v2, v0, :cond_d

    .line 9
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    iput-boolean v2, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 16
    const/4 v9, 0x0

    .line 17
    iput-boolean v9, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    .line 19
    const/4 v0, 0x0

    .line 20
    const/high16 v1, 0x3f800000  # 1.0f

    .line 22
    if-eqz v2, :cond_18

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    move/from16 v17, v1

    .line 27
    move v1, v0

    .line 28
    move/from16 v0, v17

    .line 30
    :goto_1d
    if-eqz v2, :cond_23

    .line 32
    const v3, 0x43a1228f

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    const v3, 0x4476bd71

    .line 39
    :goto_26
    invoke-direct {v8, v8, v3, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;

    .line 42
    move-result-object v1

    .line 43
    if-eqz v2, :cond_2f

    .line 45
    const-wide/16 v3, 0x32

    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    const-wide/16 v3, 0x0

    .line 50
    :goto_31
    invoke-virtual {v1, v3, v4}, Lmiuix/animation/physics/DynamicAnimation;->setStartDelay(J)V

    .line 53
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 56
    iput-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 58
    iget-boolean v0, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 60
    const/4 v10, 0x1

    .line 61
    if-nez v0, :cond_54

    .line 63
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    .line 65
    new-instance v2, Lmiuix/appcompat/internal/app/widget/b;

    .line 67
    invoke-direct {v2, v8, v9}, Lmiuix/appcompat/internal/app/widget/b;-><init>(Ljava/lang/Object;I)V

    .line 70
    invoke-direct {v0, v10, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;-><init>(ILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;)V

    .line 73
    new-instance v2, Lmiuix/appcompat/internal/app/widget/c;

    .line 75
    invoke-direct {v2, v0, v9}, Lmiuix/appcompat/internal/app/widget/c;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;I)V

    .line 78
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 81
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 84
    return-void

    .line 85
    :cond_54
    new-instance v7, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    .line 87
    new-instance v0, Lmiuix/appcompat/internal/app/widget/b;

    .line 89
    invoke-direct {v0, v8, v10}, Lmiuix/appcompat/internal/app/widget/b;-><init>(Ljava/lang/Object;I)V

    .line 92
    const/4 v3, 0x2

    .line 93
    invoke-direct {v7, v3, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;-><init>(ILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;)V

    .line 96
    new-instance v0, Lmiuix/appcompat/internal/app/widget/c;

    .line 98
    invoke-direct {v0, v7, v10}, Lmiuix/appcompat/internal/app/widget/c;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;I)V

    .line 101
    invoke-virtual {v1, v0}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 104
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 107
    iget-object v11, v8, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 116
    move-result-object v0

    .line 117
    move-object v12, v0

    .line 118
    check-cast v12, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 120
    if-nez v11, :cond_7b

    .line 122
    move v4, v9

    .line 123
    goto :goto_80

    .line 124
    :cond_7b
    invoke-virtual {v11}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    .line 127
    move-result v0

    .line 128
    move v4, v0

    .line 129
    :goto_80
    if-eqz v2, :cond_85

    .line 131
    move v13, v4

    .line 132
    move v14, v9

    .line 133
    goto :goto_87

    .line 134
    :cond_85
    move v14, v4

    .line 135
    move v13, v9

    .line 136
    :goto_87
    if-eqz v11, :cond_f4

    .line 138
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 140
    if-nez v0, :cond_9e

    .line 142
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 144
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 147
    const/4 v1, -0x2

    .line 148
    new-array v3, v3, [F

    .line 150
    fill-array-data v3, :array_f6

    .line 153
    invoke-virtual {v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 156
    move-result-object v0

    .line 157
    iput-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 159
    :cond_9e
    iget-object v0, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 161
    if-eqz v0, :cond_ab

    .line 163
    iget-object v1, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 165
    new-array v3, v10, [Lmiuix/animation/listener/TransitionListener;

    .line 167
    aput-object v0, v3, v9

    .line 169
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 172
    :cond_ab
    iget-object v15, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 174
    new-array v6, v10, [Lmiuix/animation/listener/TransitionListener;

    .line 176
    new-instance v5, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;

    .line 178
    move-object v0, v5

    .line 179
    move-object/from16 v1, p0

    .line 181
    move/from16 v2, p1

    .line 183
    move-object v3, v12

    .line 184
    move-object v10, v5

    .line 185
    move v5, v14

    .line 186
    move-object/from16 v16, v12

    .line 188
    move-object v12, v6

    .line 189
    move v6, v13

    .line 190
    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;ZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;)V

    .line 193
    iput-object v10, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTransitionListener:Lmiuix/animation/listener/TransitionListener;

    .line 195
    aput-object v10, v12, v9

    .line 197
    invoke-virtual {v15, v12}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 200
    int-to-float v0, v13

    .line 201
    invoke-virtual {v11, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 204
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 206
    const-string v1, "menu_end_state"

    .line 208
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 211
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 213
    int-to-double v2, v14

    .line 214
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 217
    move-result-object v0

    .line 218
    const/4 v1, 0x1

    .line 219
    new-array v2, v1, [Landroid/view/View;

    .line 221
    aput-object v11, v2, v9

    .line 223
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 226
    move-result-object v2

    .line 227
    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 230
    move-result-object v2

    .line 231
    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    .line 233
    iget-object v4, v8, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMenuAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 235
    aput-object v4, v3, v9

    .line 237
    invoke-interface {v2, v0, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 240
    move-object/from16 v0, v16

    .line 242
    invoke-virtual {v0, v9, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    .line 245
    :cond_f4
    return-void

    .line 246
    nop

    .line 247
    :array_f6
    .array-data 4
        0x3f733333  # 0.95f
        0x3e800000  # 0.25f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 22
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStop(Z)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 22
    invoke-interface {v1, p1}, Lmiuix/view/ActionModeAnimationListener;->onStart(Z)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/view/ActionModeAnimationListener;

    .line 22
    invoke-interface {v1, p1, p2}, Lmiuix/view/ActionModeAnimationListener;->onUpdate(ZF)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lmiuix/appcompat/R$styleable;->ActionMode:[I

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getActionBarStyle()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 20
    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_android_minHeight:I

    .line 22
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 47
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v2

    .line 57
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 62
    move-result v2

    .line 63
    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    move-result-object p1

    .line 70
    sget v0, Lmiuix/appcompat/R$attr;->actionBarPaddingStart:I

    .line 72
    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 75
    move-result p1

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v0

    .line 80
    sget v1, Lmiuix/appcompat/R$attr;->actionBarPaddingEnd:I

    .line 82
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 89
    move-result v1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 97
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 99
    if-eqz p1, :cond_71

    .line 101
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 103
    if-eqz p1, :cond_71

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v0

    .line 109
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 114
    :cond_71
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 14
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    .line 17
    :cond_10
    return-void
.end method

.method public onExpandStateChanged(II)V
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v0, :cond_14

    .line 6
    iput v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 10
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_14

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 21
    :cond_14
    if-ne p2, v0, :cond_1d

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 25
    if-eqz p1, :cond_1d

    .line 27
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 30
    :cond_1d
    const/high16 p1, 0x3f800000  # 1.0f

    .line 32
    const/4 v0, 0x0

    .line 33
    if-ne p2, v1, :cond_43

    .line 35
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 40
    move-result v3

    .line 41
    cmpl-float v3, v3, v0

    .line 43
    if-lez v3, :cond_3c

    .line 45
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 47
    if-eqz v3, :cond_35

    .line 49
    const/16 v4, 0x14

    .line 51
    invoke-virtual {v3, v0, v2, v4, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 54
    :cond_35
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 56
    if-eqz v3, :cond_3c

    .line 58
    invoke-virtual {v3, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 61
    :cond_3c
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 63
    if-eqz v3, :cond_43

    .line 65
    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 68
    :cond_43
    if-nez p2, :cond_65

    .line 70
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 72
    if-eqz p2, :cond_56

    .line 74
    invoke-virtual {p2, p1, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 77
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 79
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 84
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    .line 87
    :cond_56
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 89
    if-eqz p1, :cond_6e

    .line 91
    invoke-virtual {p1, v0, v2, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    .line 94
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    .line 96
    const/16 p2, 0x8

    .line 98
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    .line 101
    goto :goto_6e

    .line 102
    :cond_65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 105
    move-result p1

    .line 106
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 108
    sub-int/2addr p1, p2

    .line 109
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 111
    :cond_6e
    :goto_6e
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 16

    .line 1
    sub-int v0, p4, p2

    .line 3
    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    move-result-object v1

    .line 16
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 18
    div-float/2addr v0, v1

    .line 19
    float-to-int v0, v0

    .line 20
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x2

    .line 25
    if-ne v1, v4, :cond_1d

    .line 27
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 29
    goto :goto_27

    .line 30
    :cond_1d
    if-ne v1, v3, :cond_26

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    move-result v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, v2

    .line 40
    :goto_27
    sub-int v9, p5, p3

    .line 42
    sub-int v7, v9, v1

    .line 44
    sub-int/2addr p5, v1

    .line 45
    invoke-direct {p0, p2, p3, p4, p5}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutCollapseViews(IIII)V

    .line 48
    move-object v4, p0

    .line 49
    move v5, p1

    .line 50
    move v6, p2

    .line 51
    move v8, p4

    .line 52
    invoke-virtual/range {v4 .. v9}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutExpandViews(ZIIII)V

    .line 55
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    move-result p1

    .line 61
    sub-int/2addr p1, v1

    .line 62
    int-to-float p1, p1

    .line 63
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    move-result p2

    .line 69
    int-to-float p2, p2

    .line 70
    div-float/2addr p1, p2

    .line 71
    const/high16 p2, 0x3f800000  # 1.0f

    .line 73
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 76
    move-result p1

    .line 77
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->animateLayoutWithProcess(F)V

    .line 80
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mLastProcess:F

    .line 82
    const/16 p1, 0x29e

    .line 84
    if-le v0, p1, :cond_56

    .line 86
    move v2, v3

    .line 87
    :cond_56
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 89
    return-void
.end method

.method public onLayoutExpandViews(ZIIII)V
    .registers 7

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 3
    if-eqz p1, :cond_49

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_49

    .line 11
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 13
    if-eqz p1, :cond_49

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result v0

    .line 21
    sub-int v0, p5, v0

    .line 23
    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 26
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_27

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    move-result p1

    .line 38
    sub-int p2, p4, p1

    .line 40
    :cond_27
    new-instance p1, Landroid/graphics/Rect;

    .line 42
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 47
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    move-result p4

    .line 51
    sub-int/2addr p5, p3

    .line 52
    sub-int/2addr p4, p5

    .line 53
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 58
    move-result p3

    .line 59
    add-int/2addr p3, p2

    .line 60
    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 62
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    move-result p5

    .line 66
    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 74
    :cond_49
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMaxHeight:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    move-result v1

    .line 20
    sub-int v1, p1, v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 25
    move-result v3

    .line 26
    sub-int/2addr v1, v3

    .line 27
    if-lez v0, :cond_1e

    .line 29
    move p2, v0

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 34
    move-result p2

    .line 35
    :goto_22
    sub-int/2addr p2, v2

    .line 36
    const/high16 v2, -0x80000000

    .line 38
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    move-result p2

    .line 42
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v3, :cond_42

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    move-result-object v3

    .line 51
    if-ne v3, p0, :cond_42

    .line 53
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 55
    invoke-virtual {p0, v3, v1, p2, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 58
    move-result v1

    .line 59
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    move-result v3

    .line 65
    add-int/2addr v3, v4

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v3, v4

    .line 68
    :goto_43
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 73
    move-result v5

    .line 74
    const/16 v6, 0x8

    .line 76
    if-eq v5, v6, :cond_72

    .line 78
    const/high16 v5, 0x40000000  # 2.0f

    .line 80
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 83
    move-result v1

    .line 84
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 86
    invoke-virtual {v5, v1, p2}, Landroid/view/View;->measure(II)V

    .line 89
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMainContainer:Landroid/view/View;

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    move-result p2

    .line 95
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 98
    move-result v3

    .line 99
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 101
    if-eqz p2, :cond_72

    .line 103
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->canTitleBeShown()Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6e

    .line 109
    move v1, v4

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    const/4 v1, 0x4

    .line 112
    :goto_6f
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_72
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 120
    move-result p2

    .line 121
    if-eq p2, v6, :cond_87

    .line 123
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 125
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 128
    move-result v1

    .line 129
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 132
    move-result v2

    .line 133
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    .line 136
    :cond_87
    if-gtz v0, :cond_98

    .line 138
    if-lez v3, :cond_95

    .line 140
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mTitleMinHeight:I

    .line 142
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 145
    move-result p2

    .line 146
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    .line 148
    add-int v4, p2, v0

    .line 150
    :cond_95
    iput v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 152
    goto :goto_9f

    .line 153
    :cond_98
    if-lt v3, v0, :cond_9f

    .line 155
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    .line 157
    add-int/2addr v0, p2

    .line 158
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 160
    :cond_9f
    :goto_9f
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 162
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    move-result v0

    .line 168
    add-int/2addr v0, p2

    .line 169
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTotalHeight:I

    .line 171
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 173
    const/4 v1, 0x2

    .line 174
    if-ne p2, v1, :cond_b8

    .line 176
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 178
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 180
    add-int/2addr p2, v0

    .line 181
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 184
    goto :goto_c4

    .line 185
    :cond_b8
    const/4 v1, 0x1

    .line 186
    if-ne p2, v1, :cond_bf

    .line 188
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 191
    goto :goto_c4

    .line 192
    :cond_bf
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 197
    :goto_c4
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p1

    .line 12
    if-lez p3, :cond_2d

    .line 14
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 16
    if-le p1, p2, :cond_2d

    .line 18
    sub-int/2addr p1, p3

    .line 19
    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 21
    if-lt p1, p2, :cond_1b

    .line 23
    sub-int p1, p5, p3

    .line 25
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 31
    :goto_1e
    const/4 p1, 0x1

    .line 32
    aget p2, p4, p1

    .line 34
    add-int/2addr p2, p3

    .line 35
    aput p2, p4, p1

    .line 37
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 39
    if-eq p2, p5, :cond_2d

    .line 41
    aput p3, p6, p1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 46
    :cond_2d
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 16
    add-int/2addr p2, p1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p3

    .line 21
    if-gez p5, :cond_3b

    .line 23
    if-ge p3, p2, :cond_3b

    .line 25
    iget p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 27
    sub-int p6, p3, p5

    .line 29
    const/4 v0, 0x1

    .line 30
    if-gt p6, p2, :cond_29

    .line 32
    sub-int p1, p4, p5

    .line 34
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 36
    aget p1, p7, v0

    .line 38
    add-int/2addr p1, p5

    .line 39
    aput p1, p7, v0

    .line 41
    goto :goto_32

    .line 42
    :cond_29
    sub-int/2addr p2, p3

    .line 43
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 45
    aget p1, p7, v0

    .line 47
    neg-int p2, p2

    .line 48
    add-int/2addr p1, p2

    .line 49
    aput p1, p7, v0

    .line 51
    :goto_32
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 53
    if-eq p1, p4, :cond_3b

    .line 55
    aput p5, p8, v0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 60
    :cond_3b
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 p1, 0x1

    .line 9
    if-nez p4, :cond_d

    .line 11
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 16
    :goto_f
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 18
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1c

    .line 24
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 29
    :cond_1c
    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 33
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    .line 17
    const v1, 0x102001a

    .line 20
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    .line 23
    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->postShowOverflowMenu()V

    .line 30
    :cond_1d
    iget p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    .line 32
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 35
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    .line 13
    move-result v1

    .line 14
    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    .line 16
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    .line 24
    if-eqz v1, :cond_1f

    .line 26
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    .line 32
    :cond_1f
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    .line 34
    const/4 v2, 0x2

    .line 35
    if-ne v1, v2, :cond_28

    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iput v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->expandState:I

    .line 43
    :goto_2a
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableMainContainer:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    move-result p2

    .line 18
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1e

    .line 24
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    .line 26
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 28
    if-nez v0, :cond_26

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 33
    if-eqz v0, :cond_26

    .line 35
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    .line 37
    :goto_24
    move v0, v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v0, v2

    .line 40
    :goto_27
    if-eqz v0, :cond_51

    .line 42
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    .line 44
    if-nez v0, :cond_31

    .line 46
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 49
    return-void

    .line 50
    :cond_31
    if-ne v0, p1, :cond_37

    .line 52
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 55
    return-void

    .line 56
    :cond_37
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseTotalHeight:I

    .line 58
    div-int/lit8 v1, p1, 0x2

    .line 60
    add-int/2addr v1, v0

    .line 61
    if-le p2, v1, :cond_46

    .line 63
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 65
    add-int/2addr v0, p1

    .line 66
    sub-int/2addr v0, p2

    .line 67
    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 70
    goto :goto_4c

    .line 71
    :cond_46
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    .line 73
    sub-int/2addr v0, p2

    .line 74
    invoke-virtual {p1, v2, p2, v2, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 77
    :goto_4c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 82
    :cond_51
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    .line 4
    return-void
.end method

.method public refreshBottomMenu()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    if-eqz v0, :cond_f

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->addSplitMenuView()V

    .line 16
    :cond_f
    return-void
.end method

.method public removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_a
    return-void
.end method

.method public setActionBarView(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 3
    return-void
.end method

.method public setActionModeAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    .line 3
    return-void
.end method

.method public setAnimationProgress(F)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    .line 3
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    .line 5
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    .line 8
    return-void
.end method

.method public bridge synthetic setBottomMenuMode(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setBottomMenuMode(I)V

    .line 4
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_25

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz p1, :cond_1f

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1f
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_43

    :cond_25
    const v2, 0x102001a

    if-ne p1, v2, :cond_43

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_3e

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_3e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_43
    :goto_43
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .registers 8

    .line 25
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_2c

    .line 26
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_26

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez p3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    :cond_26
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_51

    :cond_2c
    const v2, 0x102001a

    if-ne p1, v2, :cond_51

    .line 31
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v2, :cond_4c

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    if-nez p3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    :cond_4c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 36
    :cond_51
    :goto_51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5c

    if-eqz p3, :cond_5c

    .line 37
    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButtonContentDescription(II)V

    :cond_5c
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 8

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_37

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz p1, :cond_31

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez p4, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    :cond_31
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_67

    :cond_37
    const v2, 0x102001a

    if-ne p1, v2, :cond_67

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_62

    .line 19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    if-nez p4, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_62

    .line 23
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    :cond_62
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p1, p3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_67
    :goto_67
    return-void
.end method

.method public setContentInset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    .line 3
    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public bridge synthetic setExpandState(IZZ)V
    .registers 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZZ)V

    return-void
.end method

.method public bridge synthetic setPendingInset(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setPendingInset(Landroid/graphics/Rect;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    .line 4
    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBarEnable:Z

    .line 3
    if-eq v0, p1, :cond_8d

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 7
    if-eqz v0, :cond_8a

    .line 9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    const/4 v1, -0x2

    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    if-nez p1, :cond_34

    .line 18
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 20
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 26
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/view/ViewGroup;

    .line 40
    if-eqz v1, :cond_2e

    .line 42
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_2e
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 49
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    goto :goto_8a

    .line 53
    :cond_34
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 66
    move-result-object v4

    .line 67
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 73
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 75
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 77
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mIsInWideMode:Z

    .line 79
    if-eqz v1, :cond_53

    .line 81
    const/16 v1, 0x11

    .line 83
    goto :goto_55

    .line 84
    :cond_53
    const/16 v1, 0x50

    .line 86
    :goto_55
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 90
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 96
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 98
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/view/ViewGroup;

    .line 111
    if-eqz v1, :cond_7c

    .line 113
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 115
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 120
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 122
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewRemoved(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 125
    :cond_7c
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 127
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 129
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 134
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 136
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onActionModeMenuViewAdded(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V

    .line 139
    :cond_8a
    :goto_8a
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 142
    :cond_8d
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    .line 4
    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    .line 4
    return-void
.end method

.method public bridge synthetic setSubTitleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSubTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    .line 6
    return-void
.end method

.method public bridge synthetic setTitleClickable(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setTitleClickable(Z)V

    .line 4
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    .line 3
    if-eq p1, v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    :cond_7
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    .line 10
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    .line 4
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

.method public updateBackground(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mBackgroundViewApplyBlur:Z

    .line 3
    if-eqz p1, :cond_8

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->clearBackground()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->resetBackground()V

    .line 12
    :goto_b
    return-void
.end method
